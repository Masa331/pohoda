module Pohoda
  module Builders
    module Lst
      class ListParameterRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('lst:requestParameter', data[:request_parameter], data[:request_parameter_attributes]) if data.key? :request_parameter

          root
        end
      end
    end
  end
end