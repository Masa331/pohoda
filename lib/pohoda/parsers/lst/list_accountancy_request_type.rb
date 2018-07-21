module Pohoda
  module Parsers
    module Lst
      class ListAccountancyRequestType
        include ParserCore::BaseParser

        def request_accountancy
          submodel_at(Ftr::RequestAccountancyType, 'lst:requestAccountancy')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_accountancy] = request_accountancy.to_h if has? 'lst:requestAccountancy'

          hash
        end
      end
    end
  end
end