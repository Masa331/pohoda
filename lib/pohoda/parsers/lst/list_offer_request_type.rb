module Pohoda
  module Parsers
    module Lst
      class ListOfferRequestType
        include ParserCore::BaseParser

        def request_offer
          submodel_at(Ftr::RequestOfferType, 'lst:requestOffer')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_offer] = request_offer.to_h_with_attrs if has? 'lst:requestOffer'

          hash
        end
      end
    end
  end
end