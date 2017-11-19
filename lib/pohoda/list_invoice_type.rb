require 'pohoda/base_element'
require 'pohoda/invoice_type'

module Pohoda
  class ListInvoiceType
    include BaseElement

    def invoices
      xpath('invoice').map do |raw|
        Pohoda::InvoiceType.new(raw)
      end
    end

    def to_h
      { invoices: invoices.map(&:to_h) }
    end
  end
end
