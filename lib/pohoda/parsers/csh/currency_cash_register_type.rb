module Pohoda
  module Parsers
    module Csh
      class CurrencyCashRegisterType
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'csh:currency')
        end

        def rate
          at 'csh:rate'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:currency] = currency.to_h_with_attrs if has? 'csh:currency'
          hash[:rate] = rate if has? 'csh:rate'

          hash
        end
      end
    end
  end
end