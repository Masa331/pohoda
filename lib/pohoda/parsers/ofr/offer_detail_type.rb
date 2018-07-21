module Pohoda
  module Parsers
    module Ofr
      class OfferDetailType
        include ParserCore::BaseParser

        def offer_item
          array_of_at(Ofr::OfferItemType, ['ofr:offerItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:offer_item] = offer_item.map(&:to_h) if has? 'ofr:offerItem'

          hash
        end
      end
    end
  end
end