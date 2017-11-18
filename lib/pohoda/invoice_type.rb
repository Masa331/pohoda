module Pohoda
  class InvoiceType
    include BaseElement

    def links
      xpath('links/link').map { |i| LinkElemetType.new(i) }
    end

    def invoice_header
      element_xml = at_xpath 'invoiceHeader'

      InvoiceHeader.new(element_xml) if element_xml
    end

    def invoice_detail
      element_xml = xml.at_xpath 'invoiceDetail'

      InvoiceDetail.new(element_xml) if element_xml
    end

    def invoice_summary
      element_xml = xml.at_xpath 'invoiceSummary'

      InvoiceSummary.new(element_xml) if element_xml
    end

    def to_h
      { links: links.map(&:to_h),
        invoice_header: invoice_header.to_h,
        invoice_detail: invoice_detail.to_h,
        invoice_summary: invoice_summary.to_h }
    end
  end
end
