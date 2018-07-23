module Pohoda
  module Builders
    module Dat
      class TransformationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('dat:input', data[:input], data[:input_attributes]) if data.key? :input
          root << build_element('dat:output', data[:output], data[:output_attributes]) if data.key? :output

          root
        end
      end
    end
  end
end