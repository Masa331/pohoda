module Pohoda
  module Builders
    module Lst
      class ItemStorageType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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