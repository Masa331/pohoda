require "pohoda/base_element"
require "pohoda/source_document_type"
require "pohoda/type_currency_home_item2"
require "pohoda/ref_type"
require "pohoda/classification_vat_type"

module Pohoda
  class InvoiceAdvancePaymentItemType
    include BaseElement

    def id
      at :'inv:id'
    end

    def source_document
      element_xml = at :'inv:sourceDocument'

      SourceDocumentType.new(element_xml) if element_xml
    end

    def quantity
      at :'inv:quantity'
    end

    def pay_vat
      at :'inv:payVAT'
    end

    def rate_vat
      at :'inv:rateVAT'
    end

    def percent_vat
      at :'inv:percentVAT'
    end

    def discount_percentage
      at :'inv:discountPercentage'
    end

    def home_currency
      element_xml = at :'inv:homeCurrency'

      TypeCurrencyHomeItem2.new(element_xml) if element_xml
    end

    def foreign_currency
      element_xml = at :'inv:foreignCurrency'

      TypeCurrencyHomeItem2.new(element_xml) if element_xml
    end

    def note
      at :'inv:note'
    end

    def accounting
      element_xml = at :'inv:accounting'

      RefType.new(element_xml) if element_xml
    end

    def classification_vat
      element_xml = at :'inv:classificationVAT'

      ClassificationVatType.new(element_xml) if element_xml
    end

    def classification_kvdph
      element_xml = at :'inv:classificationKVDPH'

      RefType.new(element_xml) if element_xml
    end

    def centre
      element_xml = at :'inv:centre'

      RefType.new(element_xml) if element_xml
    end

    def activity
      element_xml = at :'inv:activity'

      RefType.new(element_xml) if element_xml
    end

    def contract
      element_xml = at :'inv:contract'

      RefType.new(element_xml) if element_xml
    end

    def voucher_eet
      at :'inv:voucherEET'
    end

    def to_h
      { id: id,
        source_document: source_document.to_h,
        quantity: quantity,
        pay_vat: pay_vat,
        rate_vat: rate_vat,
        percent_vat: percent_vat,
        discount_percentage: discount_percentage,
        home_currency: home_currency.to_h,
        foreign_currency: foreign_currency.to_h,
        note: note,
        accounting: accounting.to_h,
        classification_vat: classification_vat.to_h,
        classification_kvdph: classification_kvdph.to_h,
        centre: centre.to_h,
        activity: activity.to_h,
        contract: contract.to_h,
        voucher_eet: voucher_eet }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
