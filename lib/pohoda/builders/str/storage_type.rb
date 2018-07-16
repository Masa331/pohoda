module Pohoda
  module Builders
    module Str
      class StorageType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :item_storage
            data[:item_storage].each { |i| root << Str::ItemStorageType.new('str:itemStorage', i).builder }
          end

          root
        end
      end
    end
  end
end