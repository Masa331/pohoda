module Pohoda
  module Parsers
    module Lst
      class ListCashType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_cash
          submodel_at(Lst::ItemCashType, 'lst:itemCash')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_cash] = item_cash.to_h if has? 'lst:itemCash'

          hash
          super.merge(hash)
        end
      end
    end
  end
end