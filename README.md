# Pohoda XML parsers and builders [![Build Status](https://travis-ci.org/Masa331/pohoda.svg?branch=master)](https://travis-ci.org/Masa331/pohoda)

This gem allows to parse and build any Pohoda entity defined in theirs v2 XML schemas. All the names and structure are preserved as in the original definitions which can be found in [Original Pohoda site](https://www.stormware.cz/pohoda/xml/seznamschemat/) or [My repo](https://github.com/Masa331/pohoda_xsd)

## Fast overview

### Parsing a XML

```ruby
xml = <<-XML
<?xml version="1.0" encoding="UTF-8"?>
<dat:dataPack
 xmlns:dat="http://www.stormware.cz/schema/version_2/data.xsd"
 xmlns:inv="http://www.stormware.cz/schema/version_2/invoice.xsd"
 xmlns:typ="http://www.stormware.cz/schema/version_2/type.xsd">

  <dat:dataPackItem id="2016001938">
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

# To get it's type:
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

## How this gem works

Both parsing and building are done with separate parser and builder class for each complex type(named or anonymous) Pohoda XML has defined. So when you do `parsed.data_pack_item.first.invoice.invoice_header.number.number_requested` you actually go through instances of `Pohoda::Parsers::Dat::DataPackType`, `Pohoda::Parsers::Dat::DataPackItemType`, `Pohoda::Parsers::Inv::InvoiceType`, `Pohoda::Parsers::Inv::InvoiceHeaderType`, and finally `Pohoda::Parsers::Typ::NumberType`. Only when you get to the last call to the `.number_requested`, you get some `String` because `<typ:numberRequested>` is not a complex type but a simple type element with actuall value.

If you count all parser classes you will find that the total number is **436** which cover **all types(named and anonymous) defined in Pohoda v2 XML schema**. That means you should be able to parse and build everything defined there(maybe not directly through `Pohoda::parse` and `Pohoda::build` but read on, i will come to this in a minute). 

All parser and builder classes are generated programatically by my tool [scaffold_parser](https://github.com/Masa331/scaffold_parser). It takes a XSD and spits out such classes.

## Naming used

Pohoda XML uses a mix of abbreviations, czech words, and english words for theirs node names. I don't know why it's such a mess but this is how it is. Sometimes it can mislead you so as a general advice always look at the actuall XSD definition and don't rely on the word meaning much.

I'v decided to keep the whole api the same. The reasons are it's programatically generated and also because i didn't want to create another cognitive layer. So:

### Method names

The differences are everything is snake cased and downcased, and there are no namespaces.

| XML name | Method name |
|----------|-------------|
| inv:symVar | sym_var |
| inv:payVAT | pay_vat |

### Class names

Everything is camel cased and inside it's namespace.

| XML name | Class name |
|----------|-------------|
| inv:invoiceType | Inv::InvoiceType |
| typ:address | Typ::Address |

## Collections

There are dozens of nodes which can occure multiple times(`minOccurs` and `maxOccurs` in XSD definitions). So such elements are **always** returned in an array. For example:

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

Also, when you want to build such invoice, you have to provide hash with `invoice_item` as an array with actuall items in it.

In my opinion it would be a lot nicer if the methods returning arrays would be in plural. And in this situation(`#invoice_item` => `#invoice_items` theoretically) it would be even possible with some Inflector but not all the names are inflectible so it's not possible.

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

This `<inv:parameters>` element can't contain(from it's definition) nothing else than `<inv:parameter>` multiple times. In such cases i'v made a shortcut and when you call `invoice.invoice_header.parameters` you already get array with actuall parameters.

If the shortcut wasn't there, you would have to get to them like this: `invoice.invoice_header.parameters.parameter`(=> `[<parameter>, <parameter>, ...]`) which just felt so awkward to me so i made the shortcut. But this is true only if the container element really can't contain anything else. If it can contain anything else, then the shortcut isn't there, so beware.

This feature felt really cool at the start but i'm not so sure about it now. However it's still here.

### Building with namespaces

To have your xml builded with explicit namespace declarations you have to pass all namespaces to builder like so:

```ruby
hash = { data_pack_item: [{ invoice: { invoice_header: { invoice_type: 'issuedInvoice' } } }] }
options = { namespaces: { dat: '...namespace...' } }
Pohoda.build(hash, options)
```

=>

```xml
<?xml version="1.0"?>
<dat:dataPack xmlns:dat="...namespace...">
  <dat:dataPackItem>
    <inv:invoice>
      <inv:invoiceHeader>
        <inv:invoiceType>issuedInvoice</inv:invoiceType>
      </inv:invoiceHeader>
    </inv:invoice>
  </dat:dataPackItem>
</dat:dataPack>
```


### Parsing and building something other than invoices

I built this gem for my project [damedata.cz](https://damedata.cz) where i need to work with invoices in Pohoda XML so main focus were always on invoices. They are currently only Pohoda entity which can be directly parsed and build through `Pohoda#parse` and `Pohoda#build`. However, with just a little bit more work it's also possible to work with any other Pohoda entity. You just have to directly interact with Parser and Builder classes like so:

```ruby
xml = <<-XML
<?xml version="1.0" encoding="UTF-8"?>
<dat:dataPack >
  <dat:dataPackItem>
    <inv:invoice>
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

```ruby
# 1) Parse your xml with Ox with following options:
parsed = Ox.load(xml, skip: :skip_none)
# 2) Get the element with entity you want to parse:
entity = parsed.locate('dat:dataPack/dat:dataPackItem/inv:invoice').first
# 3) Use proper parser class:
result = Pohoda::Parsers::Inv::InvoiceType.new(entity)
```

The api on `result` is exactly the same as if you would use `Pohoda#parse` and then get to the actuall invoice as showed in the examples at the start.

Building is very similar:
```ruby
# 1) prepare data as hash:
hash = { invoice_header: { invoice_type: 'issuedInvoice', number: { number_requested: '123' } } }
# 2) instantiate builder:
builder = Pohoda::Builders::Inv::InvoiceType.new('inv:invoice', hash)
# 3) call to xml:
builder.to_xml
```
results in:

```xml
<?xml version="1.0"?>
<inv:invoice>
  <inv:invoiceHeader>
    <inv:invoiceType>issuedInvoice</inv:invoiceType>
    <inv:number>
      <typ:numberRequested>123</typ:numberRequested>
    </inv:number>
  </inv:invoiceHeader>
</inv:invoice>
```

Notice that in the builder instantiation we had to provide root element node name as first argument. Unfortunatelly that's necesarry. I do no longer remember why but that's how it is. Oh, i do remember now. In XSD you can have variously named nodes which share the same type, that's why.

If you would like to have you entity to be parseable directly with `Pohoda#parse`, just open up an issue and tell me which one. I will gladly enchance the method if someone needs so. Or better yet, look into source code and make a pull request. It should be easy!

### Attributes

As i showed at the very start of the docs, it is possible to get attributes from parsed elements like so:

```ruby
first_invoice.attributes
=> { version: "2.0" }
```

However in XML every node can have attributes. That's why every element method has also it's `<name>_attributes` version which returns hash with it's attributes:

```ruby
first_invoice.invoice_header.invoice_type_attributes
=> {}
```

Most of the time they will be empty. And these methods exists even for nodes which don't have attributes defined in theirs XSD definitions. That's because i didn't have time to make the scaffold_parser even better to define these methods only on elements with attributes defined in XSD.

### Changelog

#### 28.12.2019, gem version 3.1.0

* Parse text out of CDATA nodes same as from normal terminate nodes

#### 11.9.2019, gem version 3.0.0

* Update parsers and builders to newer Pohoda XSD v2 release

#### 16.1.2019, gem version 2.0.0

* Update parsers and builders to Pohoda XSD v2 release 12 100

### Epilogue

I created this gem because i needed it for my own project [damedata.cz](https://damedata.cz). But as i spent countless and countless hours of my free time on building it, i would be really happy if it helps to anyone else. So if it does help you, please please star the repo so i know it wasn't worthless and i won't feel so misserably in case my project fails.

On the other hand, if you don't like it or you have some problem with using it(bad design/docs/features/whatever) please please let me know also! I want to know what the problem and your usecase are and i will try to help you.

Allright, have a good one!

Premysl Donat
