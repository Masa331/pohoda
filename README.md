# Pohoda XML Invoice

Simple parser and builder for Pohoda XML invoices

Content:
1. [About](#about)
    1. [Naming](#naming)
    2. [What's missing](#whats-missing)
2. [Api](#api)
    1. [Parsers](#parsers)
    2. [Builder](#builder)
3. [External links](#external-links)
4. [License](#license)

## About

The goal of this library is to wrap the Pohoda XMLs with very thin layer on which you can build anything you need. The library itself is very simple and tries to make no asusmptions of it's usage.

### Naming

Pohoda XML uses a mix of abbreviations, czech words, and english words for naming. I'v decided to keep method and class names the same so user isn't confused with another layer's naming. The only difference is everything is snake cased and downcased.

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

Builder doc here

## External links

- Official XSD Schemas for invoices and other Pohoda docs - <https://www.stormware.cz/pohoda/xml/seznamschemat/>
- Official example invoices - <https://www.stormware.cz/pohoda/xml/dokladyimport/#Faktury>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
