module Pohoda
  module Parsers
    module Lst
      class ListEnquiryRequestType
        include ParserCore::BaseParser

        def request_enquiry
          submodel_at(Ftr::RequestEnquiryType, 'lst:requestEnquiry')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_enquiry] = request_enquiry.to_h_with_attrs if has? 'lst:requestEnquiry'

          hash
        end
      end
    end
  end
end