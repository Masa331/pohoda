module Pohoda
  module Parsers
    module Typ
      class MOSStype
        include ParserCore::BaseParser

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'

          hash
        end
      end
    end
  end
end