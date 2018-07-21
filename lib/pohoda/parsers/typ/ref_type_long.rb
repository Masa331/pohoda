module Pohoda
  module Parsers
    module Typ
      class RefTypeLong
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

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'

          hash
        end
      end
    end
  end
end