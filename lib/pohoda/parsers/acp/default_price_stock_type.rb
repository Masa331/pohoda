module Pohoda
  module Parsers
    module Acp
      class DefaultPriceStockType
        include ParserCore::BaseParser

        def price
          at 'acp:price'
        end

        def price_attributes
          attributes_at 'acp:price'
        end

        def pay_vat
          at 'acp:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'acp:payVAT'
        end

        def foreign_currency
          submodel_at(Acp::TypeAcpCurrencyForeign, 'acp:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:price] = price if has? 'acp:price'
          hash[:price_attributes] = price_attributes if has? 'acp:price'
          hash[:pay_vat] = pay_vat if has? 'acp:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'acp:payVAT'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'acp:foreignCurrency'

          hash
        end
      end
    end
  end
end