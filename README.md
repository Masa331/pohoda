# Pohoda XML parsers and builders [![Build Status](https://travis-ci.org/Masa331/pohoda.svg?branch=master)](https://travis-ci.org/Masa331/pohoda)

Simple parser and builder for Pohoda XML invoices.

## Fast overview

### Parsing a XML

```ruby
xml = <<-XML
<?xml version="1.0" encoding="UTF-8"?>
<dat:dataPack
 xmlns:dat="http://www.stormware.cz/schema/version_2/data.xsd"
 xmlns:inv="http://www.stormware.cz/schema/version_2/invoice.xsd"
 xmlns:typ="http://www.stormware.cz/schema/version_2/type.xsd">

  <dat:dataPackItem id="2016001938" version="2.0">
    <inv:invoice version="2.0">
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
        <inv:number>
          <typ:numberRequested>2016001938</typ:numberRequested>
        </inv:number>
      </inv:invoiceHeader>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
XML
```

The XML above can be parsed like this

```ruby
parsed = Pohoda.parse(xml)
```

`parsed` is then an object through which it's elements can be queried:
```ruby
# To get specific invoice:
first_invoice = parsed.data_pack_item.first.invoice

# To get it's type then:
first_invoice.invoice_header.invoice_type
=> "issuedInvoice"

# To get it's attributes:
first_invoice.attributes
=> { version: "2.0" }

# To get the data as a hash:
first_invoice.to_h
=> { attributes: {:version=>"2.0"},
     invoice_header: { attributes: {},
                       invoice_type: "issuedInvoice",
                       invoice_type_attributes: {},
                       number: { attributes: {},
                                 number_requested: "2016001938",
                                 number_requested_attributes: {} } } }
```

### Building a XML

To build a Pohoda XML you need a hash with same structure you get from calling `#to_h` on parsed xml:

```ruby
hash = { data_pack_item: [{ invoice: { invoice_header: { invoice_type: 'issuedInvoice',
                                                         number: { number_requested: '123' } } } }] }
Pohoda.build(hash)
```

it returns a string like this:
```xml
<?xml version="1.0"?>
<dat:dataPack>
  <dat:dataPackItem>
    <inv:invoice>
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
        <inv:number>
          <typ:numberRequested>123</typ:numberRequested>
        </inv:number>
      </inv:invoiceHeader>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
```
```xml
<?xml version="1.0"?>
<dat:dataPack>
  <dat:dataPackItem>
    <inv:invoice>
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
        <inv:number>
          <typ:numberRequested>123</typ:numberRequested>
        </inv:number>
      </inv:invoiceHeader>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
```

## Details

Both parsing and building are done with separate parser and builder class for each complex type(named or anonymous) Pohoda XML has defined. So for eaxmple, when you do `invoice_number = parsed.data_pack_item.first.invoice.invoice_header.number.number_requested` you actually go through instances of `Pohoda::Parsers::Dat::DataPackType`, `Pohoda::Parsers::Dat::DataPackItemType`, `Pohoda::Parsers::Inv::InvoiceType`, `Pohoda::Parsers::Inv::InvoiceHeaderType`, and finally `Pohoda::Parsers::Typ::NumberType`. Only when you get to the last call to the `.number_requested`, you get `String` because `<typ:numberRequested>` is not a complex type but a simple type element with actuall value and no more structure.

If you do `find ./lib/pohoda/parsers/ -type f | wc -l` you will find that there are **436 parser classes alone** which cover **whole Pohoda v2 XML schema for all of their entities**. That means you should be able to parse and build anything from theirs schema(maybe not directly through `Pohoda::parse` and `Pohoda::build` but read on, i will come to this in a minute). 

All parser and builder classes are generated programatically by my tool [scaffold_parser](https://github.com/Masa331/scaffold_parser). It takes a XSD and spits out such classes. That means they are all uniform and can't be hand-tuned. Sometimes it's good, sometimes it's bad. For example, i can't manually translate methods to be more descriptive. But on the other hand if you get how this gem works you should be very proficient with it.

### Naming

Pohoda XML uses a mix of abbreviations, czech words, and english words for theirs node names. I don't know why it's such a horrible mess but this is how it is and it can mislead you in a lot of places. As a general advice always look at the actuall XSD definition and don't rely on the word meaning much. I will further refer to this naming style as a "PohodaNaming ™".

I'v decided to keep the whole api the same. The reasons are it's programatically generated and also because i didn't want to create another cognitive layer. So:

#### Method names

The differences are everything is snake cased and downcased, and there are no namespaces.

| XML name | Method name |
|----------|-------------|
| inv:symVar | sym_var |
| inv:payVAT | pay_vat |

#### Class names

Everything is camel cased and inside it's namespace.

| XML name | Class name |
|----------|-------------|
| inv:invoiceType | Inv::InvoiceType |
| typ:address | Typ::Address |

### Collections

There are dozens of elements which can occure multiple times(`minOccurs` and `maxOccurs` in XSD definitions). So such elements are **always** returned in an array. For example:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<dat:dataPack>
  <dat:dataPackItem>
    <inv:invoice>
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
      </inv:invoiceHeader>
      <inv:invoiceDetail>
        <inv:invoiceItem>
          <inv:text>some item</inv:text>
        </inv:invoiceItem>
        <inv:invoiceItem>
          <inv:text>some other item</inv:text>
        </inv:invoiceItem>
      </inv:invoiceDetail>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
```

when this xml is parsed, the `#invoice_item` method will return an array with all the items:
```ruby
invoice.invoice_detail.invoice_item
# => [#<Pohoda::Parsers::Inv::InvoiceItemType:0x00005609df3bc6a0...>, #<Pohoda::Parsers::Inv::InvoiceItemType:0x00005609df3bcb00...>]
```

If the invoice above would have only one item, it would be anyways returned in an array. Also, when you want to build such invoice, you have to provide hash with `invoice_item` as an array with actuall items in it.

In my opinion it would be a lot better if the methods returning arrays would be named in plural. And in this "invoice_item" situation it would be possible with some Inflector but not all the names are this nice(remember PohodaNaming ™?) so it's not really possible.

#### Ommited elements

In Pohoda XSD there are some situations when there is a node defined as complex type which's only element is another complex type which can occure multiple times. For example this:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<dat:dataPack>
  <dat:dataPackItem>
    <inv:invoice>
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
        <inv:parameters> <!-- THIS -->
          <inv:parameter>
            ...
          </inv:parameter>
          <inv:parameter>
            ...
          </inv:parameter>
        <inv:parameters> <!-- THIS -->
      </inv:invoiceHeader>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
```

This `<inv:parameters>` element can't contain(from it's definition) nothing else than `<inv:parameter>` element(multiple times possibly). In such cases i'v made a shortcut and when you call `invoice.invoice_header.parameters` you already get array with actuall parameters. If the shortcut wasn't there, you would have to get to them like this `invoice.invoice_header.parameters.parameter` which just felt so awkward to me so i made the shortcut. But this is true only if the container element really can't contain anything else. If it could contain one more different element, then the shortcut isn't there, so beware.

#### Building with namespaces

To have your xml builded with explicit namespace declarations you have to pass all namespaces to builder like so:



#### Parsing and building something other than invoices

#### Attributes
