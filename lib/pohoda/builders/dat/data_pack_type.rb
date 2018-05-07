module Pohoda
  module Builders
    module Dat
      class DataPackType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :transformation
            root << Dat::TransformationType.new('transformation', data[:transformation]).builder
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