module Pohoda
  module Parsers
    module Lst
      class ListSellingPriceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_selling_price
          array_of_at(Lst::ItemSellingPriceType, ['lst:itemSellingPrice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_selling_price] = item_selling_price.map(&:to_h) if has? 'lst:itemSellingPrice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end