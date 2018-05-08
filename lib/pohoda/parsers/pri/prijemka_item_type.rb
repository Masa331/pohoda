module Pohoda
  module Parsers
    module Pri
      class PrijemkaItemType
        include ParserCore::BaseParser

        def id
          at 'pri:id'
        end

        def text
          at 'pri:text'
        end

        def quantity
          at 'pri:quantity'
        end

        def unit
          at 'pri:unit'
        end

        def coefficient
          at 'pri:coefficient'
        end

        def pay_vat
          at 'pri:payVAT'
        end

        def rate_vat
          at 'pri:rateVAT'
        end

        def percent_vat
          at 'pri:percentVAT'
        end

        def discount_percentage
          at 'pri:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'pri:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'pri:foreignCurrency')
        end

        def note
          at 'pri:note'
        end

        def code
          at 'pri:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'pri:stockItem')
        end

        def acc
          at 'pri:acc'
        end

        def centre
          submodel_at(Typ::RefType, 'pri:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pri:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pri:contract')
        end

        def expiration_date
          at 'pri:expirationDate'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pri:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'pri:id'
          hash[:text] = text if has? 'pri:text'
          hash[:quantity] = quantity if has? 'pri:quantity'
          hash[:unit] = unit if has? 'pri:unit'
          hash[:coefficient] = coefficient if has? 'pri:coefficient'
          hash[:pay_vat] = pay_vat if has? 'pri:payVAT'
          hash[:rate_vat] = rate_vat if has? 'pri:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'pri:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'pri:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'pri:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'pri:foreignCurrency'
          hash[:note] = note if has? 'pri:note'
          hash[:code] = code if has? 'pri:code'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'pri:stockItem'
          hash[:acc] = acc if has? 'pri:acc'
          hash[:centre] = centre.to_h_with_attrs if has? 'pri:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'pri:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'pri:contract'
          hash[:expiration_date] = expiration_date if has? 'pri:expirationDate'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'pri:parameters'

          hash
        end
      end
    end
  end
end