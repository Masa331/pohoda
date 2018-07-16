module Pohoda
  module Builders
    module Lst
      class ItemStorageType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :sub_storages
            element = Ox::Element.new('lst:subStorages')
            data[:sub_storages].each { |i| element << Lst::ItemStorageType.new('lst:itemStorage', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end