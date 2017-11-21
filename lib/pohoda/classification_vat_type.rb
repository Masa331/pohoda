module Pohoda
  class ClassificationVatType
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def classification_vat_type
      text_at 'classificationVATType'
    end

    def to_h
      { id: id,
        ids: ids,
        classification_vat_type: classification_vat_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
