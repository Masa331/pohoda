module Pohoda
  module Parsers
    module Acp
      class TypeAcpCurrencyForeign
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'acp:currency')
        end

        def rate
          at 'acp:rate'
        end

        def amount
          at 'acp:amount'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:currency] = currency.to_h_with_attrs if has? 'acp:currency'
          hash[:rate] = rate if has? 'acp:rate'
          hash[:amount] = amount if has? 'acp:amount'

          hash
        end
      end
    end
  end
end