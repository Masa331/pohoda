require 'pohoda/base_element'
require 'pohoda/list_invoice_type'

module Pohoda
  class ResponsePackItemType
    include BaseElement

    def list_invoice
      element_xml = at_xpath 'listInvoice'

      Pohoda::ListInvoiceType.new(element_xml) if element_xml
    end

    def to_h
      { list_invoice: list_invoice.to_h }
    end
  end
end
