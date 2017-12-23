# Pohoda XML Invoice

[![Build Status](https://travis-ci.org/Masa331/pohoda.svg?branch=master)](https://travis-ci.org/Masa331/pohoda)

Simple parser and builder for Pohoda XML invoices

Content:
1. [About](#about)
    1. [Naming](#naming)
    2. [What's missing](#whats-missing)
2. [Api](#api)
    1. [Parsers](#parsers)
    2. [Builder](#builder)
3. [Performance](#performance)
4. [External links](#external-links)
5. [License](#license)

## About

The goal of this library is to wrap Pohoda XMLs with very thin layer on which you can build anything you need.

### Naming

Pohoda XML uses a mix of abbreviations, czech words, and english words for naming. I'v decided to keep method and class names as same as possible.

#### Method names

The only difference is everything is snake cased and downcased

| XML name | Method name |
|----------|-------------|
| symVar | sym_var |
| payVAT | pay_vat |

#### Class names

The only difference is everything is camel cased and stripped from namespace

| XML name | Class name |
|----------|-------------|
| inv:invoiceType | InvoiceType |
| typ:address | Address |

### Missing parts

Since my time is limited, i'v decided to omit some less used elements now. All the major ones(invoice, items, advance payments, etc..) work.
If you need to parse or build something which isn't yet implemented, please open an issue with XML example attached. I will be happy to help.

Some of missing elements:
* intrastat info
* labels and parameters
* cancelDocument
* EET
* print

## Api

### Parsing a document

To parse a document:
```ruby
Pohoda.parse(File.read('./data_pack.xml'))
```

`Pohoda.parse` will return either `Pohoda::DataPackType` or `Pohoda::ResponsePackType` instance based on what was in original XML.

Now when you have `DataPackType`, you can get to the actual invoices and theirs attributes through normal Ruby methods as follows:

```ruby
data_pack = Pohoda.parse(File.read('./data_pack.xml'))
invoices = data_pack.data_pack_items.map(&:invoice)

# And to get first invoice number for example:
invoices.first.invoice_header.number.number_requested
```

ResponsePackType has a slightly different structure at the root:
```ruby
response_pack = Pohoda.parse(File.read('./response_pack.xml'))
invoices = parsed.response_pack_item.list_invoice.invoices

# Now it's same as with DataPackType:
invoices.first.invoice_header.number.number_requested
```

Every Pohoda XML element has it's counterpart as a class in this gem and when you query some attribute one any invoice you go through it:
```ruby
data_pack = Pohoda.parse(File.read('./data_pack.xml')) # => Pohoda::DataPackType
data_pack.data_pack_items # => Ok, that's a normal Array :)

invoice = data_pack.data_pack_items.first # => Pohoda::InvoiceType
invoice.invoice_header # => Pohoda::InvoiceHeaderType
invoice.invoice_header.number # => Pohoda::Number
invoice.invoice_header.number.number_requested # => String - some actual value here
```

Every instance of `Pohoda` class also has a `#to_h` method for getting all attributes as `Hash`:
```ruby
data_pack = Pohoda.parse(File.read('./data_pack.xml'))
data_pack.data_pack_items

invoice = data_pack.data_pack_items.first
invoice.invoice_header.number.to_h
# => { id: '71', ids: '47217', number_requested: '4721703283' }
```

**Note that when some value is missing, when it's null, or when it's a empty string, it won't be present in the hash:**
```ruby
# Let's say we have following data:
# <inv:number>
#   <typ:id></typ:id>
#   <typ:numberRequested>4721703283</typ:numberRequested>
# </inv:number>

...

invoice.invoice_header.number.to_h

# => { number_requested: '4721703283' }
```

With `#raw` method you can also get the raw data with which `Pohoda` class was instantiated and from which it instantiates all lower level elements:
```ruby
data_pack = Pohoda.parse(File.read('./data_pack.xml'))
data_pack.data_pack_items

invoice = data_pack.data_pack_items.first
invoice.invoice_header.number.raw
# => { :"typ:id" => "71", :"typ:ids" => "47217", :"typ:numberRequested" => "4721703283" }
```
The actual XML parsing is done with [Ox](https://github.com/ohler55/ox)(which is great work btw) and this is basically it's output.

### Creating a document

```ruby
# All builders are under Pohoda::Builder namespace and all have to be initialized with hash of attributes
builder = Pohoda::Builder::InvoiceType.new({ invoice_header: { invoice_type: 'issuedInvoice' } })

# and then it has #to_xml method, which outputs xml string
builder.to_xml
=> "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<inv:invoice....."

# if you need to change any attribute later, it's possible. First level attributes are accessible through accessor
builder.invoice_header = { invoice_type: 'issuedProformaInvoice' }

# or, under the first level, it's just hashes
builder.invoice_header[:invoice_type] = 'issuedProformaInvoice'
```

## Performance

Is generated with `measure_performance.rb` script. Is of course subject to machine on which is running.

| version | description | time | total memory allocated | total memory retained |
|---------|-------------|------|------------------------|-----------------------|
| v0.14.0 | map 100 invoices to_h | 0.021 s | 3.4029 Mb | 0.0 Mb |
| v0.14.0 | map one attribute on 100 invoices | 0.0103 s | 1.9768 Mb | 0.0 Mb |

## External links

- Official XSD Schemas for invoices and other Pohoda docs - <https://www.stormware.cz/pohoda/xml/seznamschemat/>
- Official example invoices - <https://www.stormware.cz/pohoda/xml/dokladyimport/#Faktury>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
