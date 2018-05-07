module Pohoda
  module Builders
    module Acp
      class ActionPriceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('acp:id', data[:id]) if data.key? :id
          root << build_element('acp:name', data[:name]) if data.key? :name
          root << build_element('acp:description', data[:description]) if data.key? :description
          if data.key? :validity_action
            root << Acp::ValidityActionType.new('acp:validityAction', data[:validity_action]).builder
          end
          root << build_element('acp:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          root << build_element('acp:deriveFromAccesoryPrice', data[:derive_from_accesory_price]) if data.key? :derive_from_accesory_price
          root << build_element('acp:rounding', data[:rounding]) if data.key? :rounding
          root << build_element('acp:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end