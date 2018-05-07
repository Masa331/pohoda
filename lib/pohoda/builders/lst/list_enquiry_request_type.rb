module Pohoda
  module Builders
    module Lst
      class ListEnquiryRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_enquiry
            root << Ftr::RequestEnquiryType.new('requestEnquiry', data[:request_enquiry]).builder
          end

          root
        end
      end
    end
  end
end