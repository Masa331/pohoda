module Pohoda
  module Parsers
    module Typ
      class SourceDocumentItemType
        include ParserCore::BaseParser

        def source_item_id
          at 'typ:sourceItemId'
        end

        def source_item_id_attributes
          attributes_at 'typ:sourceItemId'
        end

        def source_item_ext_id
          submodel_at(Typ::ExtIdType, 'typ:sourceItemExtId')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_item_id] = source_item_id if has? 'typ:sourceItemId'
          hash[:source_item_id_attributes] = source_item_id_attributes if has? 'typ:sourceItemId'
          hash[:source_item_ext_id] = source_item_ext_id.to_h if has? 'typ:sourceItemExtId'

          hash
        end
      end
    end
  end
end