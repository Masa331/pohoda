module Pohoda
  module Builders
    module Str
      class ItemStorageType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('str:subStorages', data[:sub_storages]) if data.key? :sub_storages

          root
        end
      end
    end
  end
end