module Pohoda
  module Builders
    module Lst
      class ItemStorageType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :sub_storages
            root << Lst::SubStoragesType.new('subStorages', data[:sub_storages]).builder
          end

          root
        end
      end
    end
  end
end