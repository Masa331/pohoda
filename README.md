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

The goal of this library is to wrap Pohoda XMLs with very thin layer on which you can build anything you need. The library itself is very simple and tries to make no asusmptions of it's usage.

### Naming

Pohoda XML uses a mix of abbreviations, czech words, and english words for naming. I'v decided to keep method and class names the same. The only difference is everything is snake cased and downcased.

For example:

| XML name | method name |
|----------|-------------|
| symVar | sym_var |
| payVAT | pay_vat |

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

Parsers and builders are separate classes but since parsers can output hash with which builders can be initialized it should be easy to use them together. Generally, there should be separate parser and builder class for each complex element Pohoda XML has.

### Parsers

Most common entry point will be `DataPackType` parser. It parses the whole file with invoices:
```ruby
xml = Nokogiri::XML(File.open "./invoices.xml").at_xpath('//dat:dataPack')
data_pack = Pohoda::DataPackType.new(xml)

# DataPack includes many DataPackItem items, which are just wrappers around specific documents.
item = data_pack.data_pack_items.first
=> DataPackItemType

# To get to the invoice inside just call #invoice on it
invoice = item.invoice
=> InvoiceType

# Now you are on the invoice level and can start to read it's data
invoice.invoice_header.sym_var
=> '2017000123'

invoice.invoice_header.date_accounting
=> '2017-10-14'

...

# Invoice items are under #items method
invoice.invoice_detail.items
=> [#<Pohoda::InvoiceItemType:0x00000001ec9cc0, #<Pohoda::InvoiceItemType:0x00000001ec9cc0, ...]

# Invoice advance payment items are under #advance_payments method
invoice.invoice_detail.advance_payments
=> [#<Pohoda::InvoiceAdvancePaymentItemType:0x00000001d3f418, ...]

```

For each special complex element in Pohoda XML there is a separate parser equivalent in this library. So when you use `data_pack.data_pack_items.first.invoice.invoice_header.sym_var` you actually go through few of them and end in `InvoiceType` parser. This means they can be used separately:
```ruby
xml = Nokogiri::XML(File.open "./invoices.xml").at_xpath('//inv:invoice')
invoice = Pohoda::InvoiceType.new(xml)

invoice.invoice_header.sym_var
=> '2017000123'

...
```

Each parser also has a `#to_h` method, which converts all it's attributes into hash:
```ruby
invoice.to_h
=> { invoice_header: {
       invoice_type: 'issuedInvoice',
       sym_var: '2017000123',
       items: [{ id: '1', text: 'Some cool item' }],
       ...
     }
   }
```


### Builder

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

### Together

```ruby
# Load some invoice
xml = Nokogiri::XML(File.open "./invoices.xml").at_xpath('//dat:dataPack')
data_pack = Pohoda::DataPackType.new(xml)

# output to hash and initialize new builder with it
builder = Pohoda::Builder::DataPack.new data_pack.to_h

# change something in it
builder.data_pack_items.first[:invoice][:invoice_header][:invoice_type] = 'proformaIssuedInvoice'

# and then output to xml
builder.to_xml
```

## Performance

Is generated with `measure_performance.rb` script. Is of course subject to machine on which is running.

| version | description | time | total memory allocated | total memory retained |
|---------|-------------|------|------------------------|-----------------------|
| 8d96481 | map 100 invoices to_h | 0.0132 s | 24.6272 Mb | 0.0 Mb |
| 8d96481 | map one attribute on 100 invoices | 0.0017 s | 0.9032 Mb | 0.0 Mb |
| v0.11.0 | map 100 invoices to_h | 0.0234 s | 114.2392 Mb | 0.0 Mb |
| v0.11.0 | map one attribute on 100 invoices | 0.002 s | 2.2679 Mb | 0.0 Mb |

## External links

- Official XSD Schemas for invoices and other Pohoda docs - <https://www.stormware.cz/pohoda/xml/seznamschemat/>
- Official example invoices - <https://www.stormware.cz/pohoda/xml/dokladyimport/#Faktury>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
