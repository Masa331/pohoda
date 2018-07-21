module Pohoda
  module Parsers
    module Lst
      class ListIndividualPriceRequestType
        include ParserCore::BaseParser

        def request_individual_price
          submodel_at(Ftr::RequestAddressBookType, 'lst:requestIndividualPrice')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_individual_price] = request_individual_price.to_h if has? 'lst:requestIndividualPrice'

          hash
        end
      end
    end
  end
end