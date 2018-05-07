module Pohoda
  module Parsers
    module Bka
      class CurrencyBankAccountType
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'bka:currency')
        end

        def rate
          at 'bka:rate'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:currency] = currency.to_h_with_attrs if has? 'bka:currency'
          hash[:rate] = rate if has? 'bka:rate'

          hash
        end
      end
    end
  end
end