module Pohoda
  module Builders
    module Lst
      class ListEnquiryRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_enquiry
            root << Ftr::RequestEnquiryType.new('lst:requestEnquiry', data[:request_enquiry]).builder
          end

          root
        end
      end
    end
  end
end