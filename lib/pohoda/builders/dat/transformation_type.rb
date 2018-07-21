module Pohoda
  module Builders
    module Dat
      class TransformationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('dat:input', data[:input], data[:input_attributes]) if data.key? :input
          root << build_element('dat:output', data[:output], data[:output_attributes]) if data.key? :output

          root
        end
      end
    end
  end
end