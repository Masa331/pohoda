module Pohoda
  module Builders
    module Acp
      class ActionPriceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acp:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('acp:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('acp:description', data[:description], data[:description_attributes]) if data.key? :description
          if data.key? :validity_action
            root << Acp::ValidityActionType.new('acp:validityAction', data[:validity_action]).builder
          end
          root << build_element('acp:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          root << build_element('acp:deriveFromAccesoryPrice', data[:derive_from_accesory_price], data[:derive_from_accesory_price_attributes]) if data.key? :derive_from_accesory_price
          root << build_element('acp:rounding', data[:rounding], data[:rounding_attributes]) if data.key? :rounding
          root << build_element('acp:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end