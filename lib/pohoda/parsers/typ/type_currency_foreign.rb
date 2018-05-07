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

        def amount
          at 'typ:amount'
        end

        def price_sum
          at 'typ:priceSum'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:currency] = currency.to_h_with_attrs if has? 'typ:currency'
          hash[:rate] = rate if has? 'typ:rate'
          hash[:amount] = amount if has? 'typ:amount'
          hash[:price_sum] = price_sum if has? 'typ:priceSum'

          hash
        end
      end
    end
  end
end