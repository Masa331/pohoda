module Pohoda
  module Parsers
    module Ofr
      class OfferItemType
        include ParserCore::BaseParser

        def id
          at 'ofr:id'
        end

        def text
          at 'ofr:text'
        end

        def quantity
          at 'ofr:quantity'
        end

        def unit
          at 'ofr:unit'
        end

        def coefficient
          at 'ofr:coefficient'
        end

        def pay_vat
          at 'ofr:payVAT'
        end

        def rate_vat
          at 'ofr:rateVAT'
        end

        def percent_vat
          at 'ofr:percentVAT'
        end

        def discount_percentage
          at 'ofr:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'ofr:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'ofr:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'ofr:typeServiceMOSS')
        end

        def centre
          submodel_at(Typ::RefType, 'ofr:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'ofr:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'ofr:contract')
        end

        def note
          at 'ofr:note'
        end

        def code
          at 'ofr:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'ofr:stockItem')
        end

        def eet_item
          at 'ofr:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['ofr:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ofr:id'
          hash[:text] = text if has? 'ofr:text'
          hash[:quantity] = quantity if has? 'ofr:quantity'
          hash[:unit] = unit if has? 'ofr:unit'
          hash[:coefficient] = coefficient if has? 'ofr:coefficient'
          hash[:pay_vat] = pay_vat if has? 'ofr:payVAT'
          hash[:rate_vat] = rate_vat if has? 'ofr:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'ofr:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'ofr:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'ofr:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'ofr:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'ofr:typeServiceMOSS'
          hash[:centre] = centre.to_h_with_attrs if has? 'ofr:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'ofr:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'ofr:contract'
          hash[:note] = note if has? 'ofr:note'
          hash[:code] = code if has? 'ofr:code'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'ofr:stockItem'
          hash[:eet_item] = eet_item if has? 'ofr:EETItem'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'ofr:parameters'

          hash
        end
      end
    end
  end
end