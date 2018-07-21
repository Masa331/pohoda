module Pohoda
  module Builders
    module Dat
      class DataPackType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :transformation
            root << Dat::TransformationType.new('dat:transformation', data[:transformation]).builder
          end
          if data.key? :data_pack_item
            data[:data_pack_item].each { |i| root << Dat::DataPackItemType.new('dat:dataPackItem', i).builder }
          end

          if namespaces.any?
            namespaces.each do |prefix, uri|
              root["xmlns:#{prefix}"] = uri
            end
          end

          root
        end
      end
    end
  end
end
