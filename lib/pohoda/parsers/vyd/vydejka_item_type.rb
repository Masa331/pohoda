module Pohoda
  module Parsers
    module Vyd
      class VydejkaItemType
        include ParserCore::BaseParser

        def id
          at 'vyd:id'
        end

        def text
          at 'vyd:text'
        end

        def quantity
          at 'vyd:quantity'
        end

        def unit
          at 'vyd:unit'
        end

        def coefficient
          at 'vyd:coefficient'
        end

        def pay_vat
          at 'vyd:payVAT'
        end

        def rate_vat
          at 'vyd:rateVAT'
        end

        def percent_vat
          at 'vyd:percentVAT'
        end

        def discount_percentage
          at 'vyd:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'vyd:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'vyd:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'vyd:typeServiceMOSS')
        end

        def note
          at 'vyd:note'
        end

        def code
          at 'vyd:code'
        end

        def guarantee
          at 'vyd:guarantee'
        end

        def guarantee_type
          at 'vyd:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'vyd:stockItem')
        end

        def acc
          at 'vyd:acc'
        end

        def centre
          submodel_at(Typ::RefType, 'vyd:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'vyd:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vyd:contract')
        end

        def expiration_date
          at 'vyd:expirationDate'
        end

        def parameters
          submodel_at(Typ::ParametersType, 'vyd:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'vyd:id'
          hash[:text] = text if has? 'vyd:text'
          hash[:quantity] = quantity if has? 'vyd:quantity'
          hash[:unit] = unit if has? 'vyd:unit'
          hash[:coefficient] = coefficient if has? 'vyd:coefficient'
          hash[:pay_vat] = pay_vat if has? 'vyd:payVAT'
          hash[:rate_vat] = rate_vat if has? 'vyd:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'vyd:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'vyd:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'vyd:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'vyd:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'vyd:typeServiceMOSS'
          hash[:note] = note if has? 'vyd:note'
          hash[:code] = code if has? 'vyd:code'
          hash[:guarantee] = guarantee if has? 'vyd:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'vyd:guaranteeType'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'vyd:stockItem'
          hash[:acc] = acc if has? 'vyd:acc'
          hash[:centre] = centre.to_h_with_attrs if has? 'vyd:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'vyd:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'vyd:contract'
          hash[:expiration_date] = expiration_date if has? 'vyd:expirationDate'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'vyd:parameters'

          hash
        end
      end
    end
  end
end