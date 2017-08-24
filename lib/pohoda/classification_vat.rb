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
  end
end
