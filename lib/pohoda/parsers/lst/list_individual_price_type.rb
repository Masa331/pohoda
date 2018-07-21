module Pohoda
  module Parsers
    module Lst
      class ListIndividualPriceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def individual_price
          array_of_at(Idp::IndividualPriceType, ['lst:individualPrice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:individual_price] = individual_price.map(&:to_h) if has? 'lst:individualPrice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end