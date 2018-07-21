module Pohoda
  module Parsers
    module Lst
      class ListOfferType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def offer
          array_of_at(Ofr::OfferType, ['lst:offer'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:offer] = offer.map(&:to_h) if has? 'lst:offer'

          hash
          super.merge(hash)
        end
      end
    end
  end
end