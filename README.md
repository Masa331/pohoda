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

### Parsing a document

TODO

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
