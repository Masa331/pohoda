module Pohoda
  module Builders
    module Dat
      class TransformationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('dat:input', data[:input]) if data.key? :input
          root << build_element('dat:output', data[:output]) if data.key? :output

          root
        end
      end
    end
  end
end