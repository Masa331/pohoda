module Pohoda
  class DataPackItemType
    include BaseElement

    def invoice
      Pohoda::InvoiceType.new(e '//inv:invoice')
    end

    def to_h
      { invoice: invoice.to_h }
    end
  end
end
