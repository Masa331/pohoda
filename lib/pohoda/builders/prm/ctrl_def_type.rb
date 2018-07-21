module Pohoda
  module Builders
    module Prm
      class CtrlDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('prm:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('prm:label', data[:label], data[:label_attributes]) if data.key? :label
          root << build_element('prm:rect', data[:rect], data[:rect_attributes]) if data.key? :rect
          root << build_element('prm:type', data[:type], data[:type_attributes]) if data.key? :type
          root << build_element('prm:style', data[:style], data[:style_attributes]) if data.key? :style

          root
        end
      end
    end
  end
end