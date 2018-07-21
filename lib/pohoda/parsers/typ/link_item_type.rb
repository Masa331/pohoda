module Pohoda
  module Parsers
    module Typ
      class LinkItemType
        include ParserCore::BaseParser

        def source_agenda
          at 'typ:sourceAgenda'
        end

        def source_agenda_attributes
          attributes_at 'typ:sourceAgenda'
        end

        def source_item_id
          at 'typ:sourceItemId'
        end

        def source_item_id_attributes
          attributes_at 'typ:sourceItemId'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'typ:sourceAgenda'
          hash[:source_item_id] = source_item_id if has? 'typ:sourceItemId'
          hash[:source_item_id_attributes] = source_item_id_attributes if has? 'typ:sourceItemId'

          hash
        end
      end
    end
  end
end