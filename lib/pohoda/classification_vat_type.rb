module Pohoda
  class ClassificationVatType
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def classification_vat_type
      text_at 'typ:classificationVATType'
    end

    def to_h
      { id: id,
        ids: ids,
        classification_vat_type: classification_vat_type }
    end
  end
end
