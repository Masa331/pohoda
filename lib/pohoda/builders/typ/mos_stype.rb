module Pohoda
  module Builders
    module Typ
      class MOSStype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids

          root
        end
      end
    end
  end
end