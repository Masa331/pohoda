module Pohoda
  module Builders
    module Typ
      class TypeCurrencyHome
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:priceNone', data[:price_none], data[:price_none_attributes]) if data.key? :price_none
          root << build_element('typ:priceLow', data[:price_low], data[:price_low_attributes]) if data.key? :price_low
          root << build_element('typ:priceLowVAT', data[:price_low_vat], data[:price_low_vat_attributes]) if data.key? :price_low_vat
          root << build_element('typ:priceLowSum', data[:price_low_sum], data[:price_low_sum_attributes]) if data.key? :price_low_sum
          root << build_element('typ:priceHigh', data[:price_high], data[:price_high_attributes]) if data.key? :price_high
          root << build_element('typ:priceHighVAT', data[:price_high_vat], data[:price_high_vat_attributes]) if data.key? :price_high_vat
          root << build_element('typ:priceHighSum', data[:price_high_sum], data[:price_high_sum_attributes]) if data.key? :price_high_sum
          root << build_element('typ:price3', data[:price3], data[:price3_attributes]) if data.key? :price3
          root << build_element('typ:price3VAT', data[:price3_vat], data[:price3_vat_attributes]) if data.key? :price3_vat
          root << build_element('typ:price3Sum', data[:price3_sum], data[:price3_sum_attributes]) if data.key? :price3_sum
          if data.key? :round
            root << Typ::TypeRound.new('typ:round', data[:round]).builder
          end

          root
        end
      end
    end
  end
end