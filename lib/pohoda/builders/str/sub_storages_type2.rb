module Pohoda
  module Builders
    module Str
      class SubStoragesType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('str:itemStorage', data[:item_storage], data[:item_storage_attributes]) if data.key? :item_storage

          root
        end
      end
    end
  end
end