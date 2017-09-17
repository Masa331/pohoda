module Pohoda
  class InvoiceType
    include BaseElement

    def links
      xml.xpath('inv:links/typ:link').map { |i| LinkElemetType.new(i) }
    end

    def invoice_header
      InvoiceHeader.new(e 'inv:invoiceHeader')
    end

    def invoice_detail
      InvoiceDetail.new(e 'inv:invoiceDetail')
    end

    def invoice_summary
      InvoiceSummary.new(e 'inv:invoiceSummary')
    end

    def to_h
      { links: links.map(&:to_h),
        invoice_header: invoice_header.to_h,
        invoice_detail: invoice_detail.to_h,
        invoice_summary: invoice_summary.to_h }
    end
  end
end
