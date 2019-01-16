module Pohoda
  module Parsers
    module Lst
      class ListEstablishmentRequestType
        include ParserCore::BaseParser

        def request_establishment
          at 'lst:requestEstablishment'
        end

        def request_establishment_attributes
          attributes_at 'lst:requestEstablishment'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_establishment] = request_establishment if has? 'lst:requestEstablishment'
          hash[:request_establishment_attributes] = request_establishment_attributes if has? 'lst:requestEstablishment'

          hash
        end
      end
    end
  end
end