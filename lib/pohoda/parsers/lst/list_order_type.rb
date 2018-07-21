module Pohoda
  module Parsers
    module Lst
      class ListOrderType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def order
          array_of_at(Ord::OrderType, ['lst:order'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:order] = order.map(&:to_h) if has? 'lst:order'

          hash
          super.merge(hash)
        end
      end
    end
  end
end