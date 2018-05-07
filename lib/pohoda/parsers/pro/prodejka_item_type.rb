module Pohoda
  module Parsers
    module Pro
      class ProdejkaItemType
        include ParserCore::BaseParser

        def text
          at 'pro:text'
        end

        def quantity
          at 'pro:quantity'
        end

        def unit
          at 'pro:unit'
        end

        def coefficient
          at 'pro:coefficient'
        end

        def pay_vat
          at 'pro:payVAT'
        end

        def rate_vat
          at 'pro:rateVAT'
        end

        def percent_vat
          at 'pro:percentVAT'
        end

        def discount_percentage
          at 'pro:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'pro:homeCurrency')
        end

        def note
          at 'pro:note'
        end

        def code
          at 'pro:code'
        end

        def guarantee
          at 'pro:guarantee'
        end

        def guarantee_type
          at 'pro:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'pro:stockItem')
        end

        def accounting
          submodel_at(Typ::RefType, 'pro:accounting')
        end

        def centre
          submodel_at(Typ::RefType, 'pro:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pro:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pro:contract')
        end

        def expiration_date
          at 'pro:expirationDate'
        end

        def eet_item
          at 'pro:EETItem'
        end

        def parameters
          submodel_at(Typ::ParametersType, 'pro:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:text] = text if has? 'pro:text'
          hash[:quantity] = quantity if has? 'pro:quantity'
          hash[:unit] = unit if has? 'pro:unit'
          hash[:coefficient] = coefficient if has? 'pro:coefficient'
          hash[:pay_vat] = pay_vat if has? 'pro:payVAT'
          hash[:rate_vat] = rate_vat if has? 'pro:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'pro:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'pro:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'pro:homeCurrency'
          hash[:note] = note if has? 'pro:note'
          hash[:code] = code if has? 'pro:code'
          hash[:guarantee] = guarantee if has? 'pro:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'pro:guaranteeType'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'pro:stockItem'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'pro:accounting'
          hash[:centre] = centre.to_h_with_attrs if has? 'pro:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'pro:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'pro:contract'
          hash[:expiration_date] = expiration_date if has? 'pro:expirationDate'
          hash[:eet_item] = eet_item if has? 'pro:EETItem'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'pro:parameters'

          hash
        end
      end
    end
  end
end