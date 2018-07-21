module Pohoda
  module Parsers
    module Typ
      class RefType
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

        def value_type
          at 'typ:valueType'
        end

        def value_type_attributes
          attributes_at 'typ:valueType'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:value_type] = value_type if has? 'typ:valueType'
          hash[:value_type_attributes] = value_type_attributes if has? 'typ:valueType'

          hash
        end
      end
    end
  end
end