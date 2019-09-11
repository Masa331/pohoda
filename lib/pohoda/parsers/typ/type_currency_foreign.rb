module Pohoda
  module Parsers
    module Typ
      class TypeCurrencyForeign
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'typ:currency')
        end

        def rate
          at 'typ:rate'
        end

        def rate_attributes
          attributes_at 'typ:rate'
        end

        def amount
          at 'typ:amount'
        end

        def amount_attributes
          attributes_at 'typ:amount'
        end

        def price_sum
          at 'typ:priceSum'
        end

        def price_sum_attributes
          attributes_at 'typ:priceSum'
        end

        def round
          submodel_at(Typ::TypeRound, 'typ:round')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'typ:currency'
          hash[:rate] = rate if has? 'typ:rate'
          hash[:rate_attributes] = rate_attributes if has? 'typ:rate'
          hash[:amount] = amount if has? 'typ:amount'
          hash[:amount_attributes] = amount_attributes if has? 'typ:amount'
          hash[:price_sum] = price_sum if has? 'typ:priceSum'
          hash[:price_sum_attributes] = price_sum_attributes if has? 'typ:priceSum'
          hash[:round] = round.to_h if has? 'typ:round'

          hash
        end
      end
    end
  end
end