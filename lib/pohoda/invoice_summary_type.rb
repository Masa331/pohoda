module Pohoda
  class InvoiceSummary
    include BaseElement

    def rounding_document
      t 'inv:roundingDocument'
    end

    def rounding_vat
      t 'inv:roundingVAT'
    end

    def calculate_vat
      t 'inv:calculateVAT'
    end

    def home_currency
      TypeCurrencyHome.new(e 'inv:homeCurrency')
    end

    def foreign_currency
      TypeCurrencyForeign.new(e 'inv:foreignCurrency')
    end

    def to_h
      { rounding_document: rounding_document,
        rounding_vat: rounding_vat,
        calculate_vat: calculate_vat,
        home_currency: home_currency.to_h,
        foreign_currency: foreign_currency.to_h }
    end
  end
end
