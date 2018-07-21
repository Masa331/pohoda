module Pohoda
  module Parsers
    module Dat
      class DataPackType
        include ParserCore::BaseParser

        def transformation
          submodel_at(Dat::TransformationType, 'dat:transformation')
        end

        def data_pack_item
          array_of_at(Dat::DataPackItemType, ['dat:dataPackItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:transformation] = transformation.to_h if has? 'dat:transformation'
          hash[:data_pack_item] = data_pack_item.map(&:to_h) if has? 'dat:dataPackItem'

          hash
        end
      end
    end
  end
end