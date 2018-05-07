module Pohoda
  module Parsers
    module Lst
      class ListActionPriceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def action_price
          array_of_at(Acp::ActionPriceType, ['lst:actionPrice'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_price] = action_price.map(&:to_h_with_attrs) if has? 'lst:actionPrice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end