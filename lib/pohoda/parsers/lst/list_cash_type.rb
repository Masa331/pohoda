module Pohoda
  module Parsers
    module Lst
      class ListCashType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_cash
          at 'lst:itemCash'
        end

        def item_cash_attributes
          attributes_at 'lst:itemCash'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_cash] = item_cash if has? 'lst:itemCash'
          hash[:item_cash_attributes] = item_cash_attributes if has? 'lst:itemCash'

          hash
          super.merge(hash)
        end
      end
    end
  end
end