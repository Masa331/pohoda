module Pohoda
  module Parsers
    module Acp
      class StockType2
        include ParserCore::BaseParser

        def id
          at 'acp:id'
        end

        def id_attributes
          attributes_at 'acp:id'
        end

        def code
          at 'acp:code'
        end

        def code_attributes
          attributes_at 'acp:code'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'acp:id'
          hash[:id_attributes] = id_attributes if has? 'acp:id'
          hash[:code] = code if has? 'acp:code'
          hash[:code_attributes] = code_attributes if has? 'acp:code'

          hash
        end
      end
    end
  end
end