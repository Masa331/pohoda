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

        def rate_attributes
          attributes_at 'bka:rate'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'bka:currency'
          hash[:rate] = rate if has? 'bka:rate'
          hash[:rate_attributes] = rate_attributes if has? 'bka:rate'

          hash
        end
      end
    end
  end
end