module Pohoda
  module Parsers
    module Ofr
      class OfferDetailType
        include ParserCore::BaseParser

        def offer_item
          array_of_at(Ofr::OfferItemType, ['ofr:offerItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:offer_item] = offer_item.map(&:to_h_with_attrs) if has? 'ofr:offerItem'

          hash
        end
      end
    end
  end
end