module Pohoda
  module Builders
    module Lst
      class ListParameterRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:requestParameter', data[:request_parameter], data[:request_parameter_attributes]) if data.key? :request_parameter

          root
        end
      end
    end
  end
end