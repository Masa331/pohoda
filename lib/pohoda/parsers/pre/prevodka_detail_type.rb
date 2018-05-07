module Pohoda
  module Parsers
    module Pre
      class PrevodkaDetailType
        include ParserCore::BaseParser

        def prevodka_item
          array_of_at(Pre::PrevodkaItemType, ['pre:prevodkaItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:prevodka_item] = prevodka_item.map(&:to_h_with_attrs) if has? 'pre:prevodkaItem'

          hash
        end
      end
    end
  end
end