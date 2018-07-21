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

        def rate_attributes
          attributes_at 'acp:rate'
        end

        def amount
          at 'acp:amount'
        end

        def amount_attributes
          attributes_at 'acp:amount'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'acp:currency'
          hash[:rate] = rate if has? 'acp:rate'
          hash[:rate_attributes] = rate_attributes if has? 'acp:rate'
          hash[:amount] = amount if has? 'acp:amount'
          hash[:amount_attributes] = amount_attributes if has? 'acp:amount'

          hash
        end
      end
    end
  end
end