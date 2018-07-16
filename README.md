# Pohoda XML Invoice [![Build Status](https://travis-ci.org/Masa331/pohoda.svg?branch=master)](https://travis-ci.org/Masa331/pohoda)

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

# To get the data as a hash:
first_invoice.to_h
=> { invoice_type: 'issuedInvoice', number: { number_requested: '2016001938' } }

# To get it's attributes:
first_invoice.attributes
=> { id: '2016001938', version: '2.0' }
```

### Building a XML

To build a Pohoda XML you need a hash with basic structure like this
```ruby
hash = { data_pack_item: [{ invoice: { invoice_header: { invoice_type: 'issuedInvoice', number: { number_requested: '123' } } } }] }
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

## Details

Both parsing and building are done with separate parser and builder class for each complex type(named or anonymous) Pohoda XML has defined. So for eaxmple, when you do `invoice_number = parsed.data_pack_item.first.invoice.invoice_header.number.number_requested` you actually go through instances of `Pohoda::Parsers::Dat::DataPackType`, `Pohoda::Parsers::Dat::DataPackItemType`, `Pohoda::Parsers::Inv::InvoiceType`, `Pohoda::Parsers::Inv::InvoiceHeaderType`, and finally `Pohoda::Parsers::Typ::NumberType`. Only when you get to the last call to the `.number_requested`, you get `String` because `<typ:numberRequested>` is not a complex type but a simple end element with actuall value.

If you do `find ./lib/pohoda/parsers/ -type f | wc -l` you will find that there is *436 parser classes alone*. What does it mean? Well, first of all it means it's actually impossible to write all of these by hand. All of them are generated programatically by my other tool [scaffold_parser](http://opensource.org/licenses/MIT) which takes a XSD and spits out both this kind of parsers and builders.

This in turn is both good and bad in some ways

### Naming

Pohoda XML uses a mix of abbreviations, czech words, and english words for theirs node names. I don't know why it's such a horrible mess but it can mislead you in a lot of places. As a general advice always look at the actuall XSD definition and don't rely on the word meaning much. I will further refer to this naming style as a "PohodaNaming ™".

I'v decided to keep the whole api the same. The reasons are this gem is automatically generated from XSD and thus the accessors can't be hand-translated and also because i wouldn't want to create another cognitive layer anyways. So:

#### Method names

The differences are everything is snake cased and downcased, and there are no namespaces.

| XML name | Method name |
|----------|-------------|
| symVar | sym_var |
| payVAT | pay_vat |

#### Class names

Everything is camel cased and inside it's namespace.

| XML name | Class name |
|----------|-------------|
| inv:invoiceType | Inv::InvoiceType |
| typ:address | Typ::Address |

### Collections

#### Naming problems
Wherever there is an element which can return multiple subnodes(by it's XSD definition) it will return array with them. Unfortunatelly because of PohodaNaming ™ it doesn't have to be always clear when this happens. For example:

#### Skip through elements
