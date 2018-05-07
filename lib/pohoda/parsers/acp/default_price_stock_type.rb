module Pohoda
  module Parsers
    module Acp
      class DefaultPriceStockType
        include ParserCore::BaseParser

        def price
          at 'acp:price'
        end

        def pay_vat
          at 'acp:payVAT'
        end

        def foreign_currency
          submodel_at(Acp::TypeAcpCurrencyForeign, 'acp:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:price] = price if has? 'acp:price'
          hash[:pay_vat] = pay_vat if has? 'acp:payVAT'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'acp:foreignCurrency'

          hash
        end
      end
    end
  end
end