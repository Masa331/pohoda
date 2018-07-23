module Pohoda
  module Builders
    module Acp
      class StockType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acp:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('acp:code', data[:code], data[:code_attributes]) if data.key? :code

          root
        end
      end
    end
  end
end