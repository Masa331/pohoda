module Pohoda
  module Builders
    module Lst
      class ListGDPRRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:requestGDPR', data[:request_gdpr], data[:request_gdpr_attributes]) if data.key? :request_gdpr

          root
        end
      end
    end
  end
end