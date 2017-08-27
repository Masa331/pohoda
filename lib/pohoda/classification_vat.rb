module Pohoda
  class ClassificationVat
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def classification_vat_type
      t 'typ:classificationVATType'
    end

    def to_h
      { id: id,
        ids: ids,
        classification_vat_type: classification_vat_type }
    end
  end
end
