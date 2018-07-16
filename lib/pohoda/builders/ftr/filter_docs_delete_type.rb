module Pohoda
  module Builders
    module Ftr
      class FilterDocsDeleteType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ftr:number', data[:number], data[:number_attributes]) if data.key? :number

          root
        end
      end
    end
  end
end