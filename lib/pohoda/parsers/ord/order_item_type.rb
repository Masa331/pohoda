module Pohoda
  module Parsers
    module Ord
      class OrderItemType
        include ParserCore::BaseParser

        def id
          at 'ord:id'
        end

        def text
          at 'ord:text'
        end

        def quantity
          at 'ord:quantity'
        end

        def delivered
          at 'ord:delivered'
        end

        def unit
          at 'ord:unit'
        end

        def coefficient
          at 'ord:coefficient'
        end

        def pay_vat
          at 'ord:payVAT'
        end

        def rate_vat
          at 'ord:rateVAT'
        end

        def percent_vat
          at 'ord:percentVAT'
        end

        def discount_percentage
          at 'ord:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'ord:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'ord:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'ord:typeServiceMOSS')
        end

        def note
          at 'ord:note'
        end

        def code
          at 'ord:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'ord:stockItem')
        end

        def centre
          submodel_at(Typ::RefType, 'ord:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'ord:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'ord:contract')
        end

        def eet_item
          at 'ord:EETItem'
        end

        def parameters
          submodel_at(Typ::ParametersType, 'ord:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ord:id'
          hash[:text] = text if has? 'ord:text'
          hash[:quantity] = quantity if has? 'ord:quantity'
          hash[:delivered] = delivered if has? 'ord:delivered'
          hash[:unit] = unit if has? 'ord:unit'
          hash[:coefficient] = coefficient if has? 'ord:coefficient'
          hash[:pay_vat] = pay_vat if has? 'ord:payVAT'
          hash[:rate_vat] = rate_vat if has? 'ord:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'ord:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'ord:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'ord:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'ord:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'ord:typeServiceMOSS'
          hash[:note] = note if has? 'ord:note'
          hash[:code] = code if has? 'ord:code'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'ord:stockItem'
          hash[:centre] = centre.to_h_with_attrs if has? 'ord:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'ord:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'ord:contract'
          hash[:eet_item] = eet_item if has? 'ord:EETItem'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'ord:parameters'

          hash
        end
      end
    end
  end
end