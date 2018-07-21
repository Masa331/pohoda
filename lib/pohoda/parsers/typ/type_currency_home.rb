module Pohoda
  module Parsers
    module Typ
      class TypeCurrencyHome
        include ParserCore::BaseParser

        def price_none
          at 'typ:priceNone'
        end

        def price_none_attributes
          attributes_at 'typ:priceNone'
        end

        def price_low
          at 'typ:priceLow'
        end

        def price_low_attributes
          attributes_at 'typ:priceLow'
        end

        def price_low_vat
          at 'typ:priceLowVAT'
        end

        def price_low_vat_attributes
          attributes_at 'typ:priceLowVAT'
        end

        def price_low_sum
          at 'typ:priceLowSum'
        end

        def price_low_sum_attributes
          attributes_at 'typ:priceLowSum'
        end

        def price_high
          at 'typ:priceHigh'
        end

        def price_high_attributes
          attributes_at 'typ:priceHigh'
        end

        def price_high_vat
          at 'typ:priceHighVAT'
        end

        def price_high_vat_attributes
          attributes_at 'typ:priceHighVAT'
        end

        def price_high_sum
          at 'typ:priceHighSum'
        end

        def price_high_sum_attributes
          attributes_at 'typ:priceHighSum'
        end

        def price3
          at 'typ:price3'
        end

        def price3_attributes
          attributes_at 'typ:price3'
        end

        def price3_vat
          at 'typ:price3VAT'
        end

        def price3_vat_attributes
          attributes_at 'typ:price3VAT'
        end

        def price3_sum
          at 'typ:price3Sum'
        end

        def price3_sum_attributes
          attributes_at 'typ:price3Sum'
        end

        def round
          submodel_at(Typ::TypeRound, 'typ:round')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:price_none] = price_none if has? 'typ:priceNone'
          hash[:price_none_attributes] = price_none_attributes if has? 'typ:priceNone'
          hash[:price_low] = price_low if has? 'typ:priceLow'
          hash[:price_low_attributes] = price_low_attributes if has? 'typ:priceLow'
          hash[:price_low_vat] = price_low_vat if has? 'typ:priceLowVAT'
          hash[:price_low_vat_attributes] = price_low_vat_attributes if has? 'typ:priceLowVAT'
          hash[:price_low_sum] = price_low_sum if has? 'typ:priceLowSum'
          hash[:price_low_sum_attributes] = price_low_sum_attributes if has? 'typ:priceLowSum'
          hash[:price_high] = price_high if has? 'typ:priceHigh'
          hash[:price_high_attributes] = price_high_attributes if has? 'typ:priceHigh'
          hash[:price_high_vat] = price_high_vat if has? 'typ:priceHighVAT'
          hash[:price_high_vat_attributes] = price_high_vat_attributes if has? 'typ:priceHighVAT'
          hash[:price_high_sum] = price_high_sum if has? 'typ:priceHighSum'
          hash[:price_high_sum_attributes] = price_high_sum_attributes if has? 'typ:priceHighSum'
          hash[:price3] = price3 if has? 'typ:price3'
          hash[:price3_attributes] = price3_attributes if has? 'typ:price3'
          hash[:price3_vat] = price3_vat if has? 'typ:price3VAT'
          hash[:price3_vat_attributes] = price3_vat_attributes if has? 'typ:price3VAT'
          hash[:price3_sum] = price3_sum if has? 'typ:price3Sum'
          hash[:price3_sum_attributes] = price3_sum_attributes if has? 'typ:price3Sum'
          hash[:round] = round.to_h if has? 'typ:round'

          hash
        end
      end
    end
  end
end