module Pohoda
  module Builders
    module Str
      class StorageType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :item_storage
            data[:item_storage].each { |i| root << Str::ItemStorageType.new('str:itemStorage', i).builder }
          end

          root
        end
      end
    end
  end
end