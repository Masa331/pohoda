require "pohoda/base_element"
require "pohoda/invoice_header_type"
require "pohoda/invoice_detail_type"
require "pohoda/invoice_summary_type"
require "pohoda/link_elemet_type"

module Pohoda
  class InvoiceType
    include BaseElement

    def links
      xpath('links/link').map { |i| LinkElemetType.new(i) }
    end

    def invoice_header
      element_xml = at_xpath 'invoiceHeader'

      InvoiceHeaderType.new(element_xml) if element_xml
    end

    def invoice_detail
      element_xml = at_xpath 'invoiceDetail'

      InvoiceDetailType.new(element_xml) if element_xml
    end

    def invoice_summary
      element_xml = at_xpath 'invoiceSummary'

      InvoiceSummaryType.new(element_xml) if element_xml
    end

    def to_h
      { links: links.map(&:to_h),
        invoice_header: invoice_header.to_h,
        invoice_detail: invoice_detail.to_h,
        invoice_summary: invoice_summary.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
