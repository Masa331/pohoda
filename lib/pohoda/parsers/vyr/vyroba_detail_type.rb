module Pohoda
  module Parsers
    module Vyr
      class VyrobaDetailType
        include ParserCore::BaseParser

        def vyroba_item
          array_of_at(Vyr::VyrobaItemType, ['vyr:vyrobaItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vyroba_item] = vyroba_item.map(&:to_h_with_attrs) if has? 'vyr:vyrobaItem'

          hash
        end
      end
    end
  end
end