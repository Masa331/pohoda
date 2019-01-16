module Pohoda
  module Parsers
    module Rdc
      class ProducedDetailsType
        include ParserCore::BaseParser

        def id
          at 'rdc:id'
        end

        def id_attributes
          attributes_at 'rdc:id'
        end

        def number
          at 'rdc:number'
        end

        def number_attributes
          attributes_at 'rdc:number'
        end

        def code
          at 'rdc:code'
        end

        def code_attributes
          attributes_at 'rdc:code'
        end

        def action_type
          at 'rdc:actionType'
        end

        def action_type_attributes
          attributes_at 'rdc:actionType'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'rdc:extId')
        end

        def item_details
          array_of_at(Rdc::ItemType, ['rdc:itemDetails', 'rdc:item'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'rdc:id'
          hash[:id_attributes] = id_attributes if has? 'rdc:id'
          hash[:number] = number if has? 'rdc:number'
          hash[:number_attributes] = number_attributes if has? 'rdc:number'
          hash[:code] = code if has? 'rdc:code'
          hash[:code_attributes] = code_attributes if has? 'rdc:code'
          hash[:action_type] = action_type if has? 'rdc:actionType'
          hash[:action_type_attributes] = action_type_attributes if has? 'rdc:actionType'
          hash[:ext_id] = ext_id.to_h if has? 'rdc:extId'
          hash[:item_details] = item_details.map(&:to_h) if has? 'rdc:itemDetails'

          hash
        end
      end
    end
  end
end