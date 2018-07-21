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

        def rate_attributes
          attributes_at 'csh:rate'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'csh:currency'
          hash[:rate] = rate if has? 'csh:rate'
          hash[:rate_attributes] = rate_attributes if has? 'csh:rate'

          hash
        end
      end
    end
  end
end