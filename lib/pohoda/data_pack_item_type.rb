require 'pohoda/base_element'
require 'pohoda/invoice_type'

module Pohoda
  class DataPackItemType
    include BaseElement

    def invoice
      element_xml = at_xpath 'invoice'

      Pohoda::InvoiceType.new(element_xml) if element_xml
    end

    def to_h
      { invoice: invoice.to_h }
    end
  end
end
