module Pohoda
  module Parsers
    module Lst
      class ListIndividualPriceRequestType
        include ParserCore::BaseParser

        def request_individual_price
          submodel_at(Ftr::RequestAddressBookType, 'lst:requestIndividualPrice')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_individual_price] = request_individual_price.to_h_with_attrs if has? 'lst:requestIndividualPrice'

          hash
        end
      end
    end
  end
end