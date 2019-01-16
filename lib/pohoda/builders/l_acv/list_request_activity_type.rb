module Pohoda
  module Builders
    module LAcv
      class ListRequestActivityType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lAcv:requestActivity', data[:request_activity], data[:request_activity_attributes]) if data.key? :request_activity

          root
        end
      end
    end
  end
end