module Pohoda
  module Parsers
    module Acp
      class ActionPriceHeaderType
        include ParserCore::BaseParser

        def id
          at 'acp:id'
        end

        def id_attributes
          attributes_at 'acp:id'
        end

        def name
          at 'acp:name'
        end

        def name_attributes
          attributes_at 'acp:name'
        end

        def description
          at 'acp:description'
        end

        def description_attributes
          attributes_at 'acp:description'
        end

        def validity_action
          submodel_at(Acp::ValidityActionType, 'acp:validityAction')
        end

        def discount_percentage
          at 'acp:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'acp:discountPercentage'
        end

        def derive_from_accesory_price
          at 'acp:deriveFromAccesoryPrice'
        end

        def derive_from_accesory_price_attributes
          attributes_at 'acp:deriveFromAccesoryPrice'
        end

        def rounding
          at 'acp:rounding'
        end

        def rounding_attributes
          attributes_at 'acp:rounding'
        end

        def note
          at 'acp:note'
        end

        def note_attributes
          attributes_at 'acp:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'acp:id'
          hash[:id_attributes] = id_attributes if has? 'acp:id'
          hash[:name] = name if has? 'acp:name'
          hash[:name_attributes] = name_attributes if has? 'acp:name'
          hash[:description] = description if has? 'acp:description'
          hash[:description_attributes] = description_attributes if has? 'acp:description'
          hash[:validity_action] = validity_action.to_h if has? 'acp:validityAction'
          hash[:discount_percentage] = discount_percentage if has? 'acp:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'acp:discountPercentage'
          hash[:derive_from_accesory_price] = derive_from_accesory_price if has? 'acp:deriveFromAccesoryPrice'
          hash[:derive_from_accesory_price_attributes] = derive_from_accesory_price_attributes if has? 'acp:deriveFromAccesoryPrice'
          hash[:rounding] = rounding if has? 'acp:rounding'
          hash[:rounding_attributes] = rounding_attributes if has? 'acp:rounding'
          hash[:note] = note if has? 'acp:note'
          hash[:note_attributes] = note_attributes if has? 'acp:note'

          hash
        end
      end
    end
  end
end