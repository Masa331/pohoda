module Pohoda
  module Parsers
    module Vyd
      class VydejkaDetailType
        include ParserCore::BaseParser

        def vydejka_item
          array_of_at(Vyd::VydejkaItemType, ['vyd:vydejkaItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vydejka_item] = vydejka_item.map(&:to_h_with_attrs) if has? 'vyd:vydejkaItem'

          hash
        end
      end
    end
  end
end