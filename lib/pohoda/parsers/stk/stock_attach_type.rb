module Pohoda
  module Parsers
    module Stk
      class StockAttachType
        include ParserCore::BaseParser

        def attach_item
          array_of_at(Stk::AttachItemType, ['stk:attachItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:attach_item] = attach_item.map(&:to_h_with_attrs) if has? 'stk:attachItem'

          hash
        end
      end
    end
  end
end