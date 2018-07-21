module Pohoda
  module Builders
    module Ftr
      class FilterIDType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id

          root
        end
      end
    end
  end
end