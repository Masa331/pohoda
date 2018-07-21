module Pohoda
  module Parsers
    module Stk
      class StockAttachType
        include ParserCore::BaseParser

        def attach_item
          array_of_at(Stk::AttachItemType, ['stk:attachItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:attach_item] = attach_item.map(&:to_h) if has? 'stk:attachItem'

          hash
        end
      end
    end
  end
end