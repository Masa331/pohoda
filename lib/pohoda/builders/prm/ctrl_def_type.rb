module Pohoda
  module Builders
    module Prm
      class CtrlDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('prm:name', data[:name]) if data.key? :name
          root << build_element('prm:label', data[:label]) if data.key? :label
          root << build_element('prm:rect', data[:rect]) if data.key? :rect
          root << build_element('prm:type', data[:type]) if data.key? :type
          root << build_element('prm:style', data[:style]) if data.key? :style

          root
        end
      end
    end
  end
end