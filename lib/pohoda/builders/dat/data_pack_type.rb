module Pohoda
  module Builders
    module Dat
      class DataPackType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :transformation
            root << Dat::TransformationType.new('dat:transformation', data[:transformation]).builder
          end
          if data.key? :data_pack_item
            data[:data_pack_item].each { |i| root << Dat::DataPackItemType.new('dat:dataPackItem', i).builder }
          end

          root
        end
      end
    end
  end
end