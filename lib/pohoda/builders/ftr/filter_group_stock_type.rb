module Pohoda
  module Builders
    module Ftr
      class FilterGroupStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ftr:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('ftr:name', data[:name], data[:name_attributes]) if data.key? :name

          root
        end
      end
    end
  end
end