module Pohoda
  module Builders
    module Str
      class ItemStorageType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('str:subStorages', data[:sub_storages], data[:sub_storages_attributes]) if data.key? :sub_storages

          root
        end
      end
    end
  end
end