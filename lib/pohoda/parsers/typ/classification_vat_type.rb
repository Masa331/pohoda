module Pohoda
  module Parsers
    module Typ
      class ClassificationVATType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def classification_vat_type
          at 'typ:classificationVATType'
        end

        def classification_vat_type_attributes
          attributes_at 'typ:classificationVATType'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:classification_vat_type] = classification_vat_type if has? 'typ:classificationVATType'
          hash[:classification_vat_type_attributes] = classification_vat_type_attributes if has? 'typ:classificationVATType'

          hash
        end
      end
    end
  end
end