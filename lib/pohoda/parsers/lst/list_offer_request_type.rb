module Pohoda
  module Parsers
    module Lst
      class ListOfferRequestType
        include ParserCore::BaseParser

        def request_offer
          submodel_at(Ftr::RequestOfferType, 'lst:requestOffer')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_offer] = request_offer.to_h if has? 'lst:requestOffer'

          hash
        end
      end
    end
  end
end