module Pohoda
  module Parsers
    module Lst
      class ListIndividualPriceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def individual_price
          array_of_at(Idp::IndividualPriceType, ['lst:individualPrice'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:individual_price] = individual_price.map(&:to_h_with_attrs) if has? 'lst:individualPrice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end