module Pohoda
  module Builders
    module Typ
      class TypeCurrencyHome
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:priceNone', data[:price_none]) if data.key? :price_none
          root << build_element('typ:priceLow', data[:price_low]) if data.key? :price_low
          root << build_element('typ:priceLowVAT', data[:price_low_vat]) if data.key? :price_low_vat
          root << build_element('typ:priceLowSum', data[:price_low_sum]) if data.key? :price_low_sum
          root << build_element('typ:priceHigh', data[:price_high]) if data.key? :price_high
          root << build_element('typ:priceHighVAT', data[:price_high_vat]) if data.key? :price_high_vat
          root << build_element('typ:priceHighSum', data[:price_high_sum]) if data.key? :price_high_sum
          root << build_element('typ:price3', data[:price3]) if data.key? :price3
          root << build_element('typ:price3VAT', data[:price3_vat]) if data.key? :price3_vat
          root << build_element('typ:price3Sum', data[:price3_sum]) if data.key? :price3_sum
          if data.key? :round
            root << Typ::TypeRound.new('round', data[:round]).builder
          end

          root
        end
      end
    end
  end
end