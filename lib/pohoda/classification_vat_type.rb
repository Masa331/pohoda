module Pohoda
  class ClassificationVatType
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def classification_vat_type
      at :'typ:classificationVATType'
    end

    def to_h
      { id: id,
        ids: ids,
        classification_vat_type: classification_vat_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
