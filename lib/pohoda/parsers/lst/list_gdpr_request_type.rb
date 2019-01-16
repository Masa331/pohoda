module Pohoda
  module Parsers
    module Lst
      class ListGDPRRequestType
        include ParserCore::BaseParser

        def request_gdpr
          at 'lst:requestGDPR'
        end

        def request_gdpr_attributes
          attributes_at 'lst:requestGDPR'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_gdpr] = request_gdpr if has? 'lst:requestGDPR'
          hash[:request_gdpr_attributes] = request_gdpr_attributes if has? 'lst:requestGDPR'

          hash
        end
      end
    end
  end
end