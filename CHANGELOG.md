# 0.13.0

- It's now possible to parse Pohoda's ResponsePackType through `Pohoda::parse`
- `#to_h` methods on every parser now don't return nil values for attributes which weren't present in original document. It doesn't contain such key at all instead.

# 0.11.0

- Added `Pohoda.parse(string)` method which should become central public api method for parsing Pohoda XML files

# 0.10.0

- Empty elements are now returned as 'nil' instead of empty string or blank element class. So it's not possible to go through parsed invoice elements if the origin doesn't have any
- `#to_h` method now also returns nil where no elements follow instead of nested empty hash with all possible values

# 0.9.0

- Removed Utils module - all methods moved directly to BaseElement module
- #t and #e methods in BaseElement are now only aliased methods to full name methods

# 0.9.0

- Add new builders
- Add tests
- Rename builder classes to conform to Pohoda names

# 0.7.0

- Add a lot of new builders
- Rename builder classes to conform to Pohoda names

# 0.6.0

- invoice data previously directly accessible through invoice(`invoice.sym_var`) are now accessible through same elements as in original Pohoda XML(`#invoice_header`, `#invoice_detail`, `#invoice_summary`). So it's eg. `invoice.invoice_header.sym_var` now.
- multiple tests enchancements
- `#advance_payments` available in `invoice.invoice_detail` with advance payments info

# 0.5.2

- Fixed various issues with exporting whole dataset into xml

# 0.5.1

- DataPackItem builder now outputs it's content(invoice) into xml

# 0.5.0

- Add builders for DataPack, DataPackItem and Invoice with all dependencies

# 0.4.0

- Add DataPackType and DataPackItemType with basic api for whole xml parsing
- Rename Invoice and InvoiceItem classes to conform to Pohoda naming
- Parse stock_item element on invoice item

# 0.3.0

- Rename couple of methods and classes to be in line with Pohoda naming

# 0.2.0

- Rename couple of methods to be in line with Pohoda naming
- Add #to_h method to all classes

# 0.1.0

- initial release
