module Pohoda
  module Parsers
    module Rdc
      class ItemType
        include ParserCore::BaseParser

        def action_type
          at 'rdc:actionType'
        end

        def action_type_attributes
          attributes_at 'rdc:actionType'
        end

        def ext_id
          at 'rdc:extId'
        end

        def ext_id_attributes
          attributes_at 'rdc:extId'
        end

        def produced_item
          array_of_at(String, ['rdc:producedItem', 'rdc:id'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type if has? 'rdc:actionType'
          hash[:action_type_attributes] = action_type_attributes if has? 'rdc:actionType'
          hash[:ext_id] = ext_id if has? 'rdc:extId'
          hash[:ext_id_attributes] = ext_id_attributes if has? 'rdc:extId'
          hash[:produced_item] = produced_item if has? 'rdc:producedItem'

          hash
        end
      end
    end
  end
end