module Pohoda
  module Parsers
    module Typ
      class ClassificationVATType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def classification_vat_type
          at 'typ:classificationVATType'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:classification_vat_type] = classification_vat_type if has? 'typ:classificationVATType'

          hash
        end
      end
    end
  end
end