module Pohoda
  module Parsers
    module Pre
      class PrevodkaDetailType
        include ParserCore::BaseParser

        def prevodka_item
          array_of_at(Pre::PrevodkaItemType, ['pre:prevodkaItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prevodka_item] = prevodka_item.map(&:to_h) if has? 'pre:prevodkaItem'

          hash
        end
      end
    end
  end
end