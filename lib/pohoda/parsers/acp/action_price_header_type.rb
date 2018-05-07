module Pohoda
  module Parsers
    module Acp
      class ActionPriceHeaderType
        include ParserCore::BaseParser

        def id
          at 'acp:id'
        end

        def name
          at 'acp:name'
        end

        def description
          at 'acp:description'
        end

        def validity_action
          submodel_at(Acp::ValidityActionType, 'acp:validityAction')
        end

        def discount_percentage
          at 'acp:discountPercentage'
        end

        def derive_from_accesory_price
          at 'acp:deriveFromAccesoryPrice'
        end

        def rounding
          at 'acp:rounding'
        end

        def note
          at 'acp:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'acp:id'
          hash[:name] = name if has? 'acp:name'
          hash[:description] = description if has? 'acp:description'
          hash[:validity_action] = validity_action.to_h_with_attrs if has? 'acp:validityAction'
          hash[:discount_percentage] = discount_percentage if has? 'acp:discountPercentage'
          hash[:derive_from_accesory_price] = derive_from_accesory_price if has? 'acp:deriveFromAccesoryPrice'
          hash[:rounding] = rounding if has? 'acp:rounding'
          hash[:note] = note if has? 'acp:note'

          hash
        end
      end
    end
  end
end