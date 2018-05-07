module Pohoda
  module Parsers
    module Vch
      class VoucherItemType
        include ParserCore::BaseParser

        def text
          at 'vch:text'
        end

        def quantity
          at 'vch:quantity'
        end

        def unit
          at 'vch:unit'
        end

        def coefficient
          at 'vch:coefficient'
        end

        def pay_vat
          at 'vch:payVAT'
        end

        def rate_vat
          at 'vch:rateVAT'
        end

        def percent_vat
          at 'vch:percentVAT'
        end

        def discount_percentage
          at 'vch:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'vch:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'vch:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'vch:typeServiceMOSS')
        end

        def note
          at 'vch:note'
        end

        def code
          at 'vch:code'
        end

        def sym_par
          at 'vch:symPar'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'vch:stockItem')
        end

        def accounting
          submodel_at(Typ::RefType, 'vch:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'vch:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'vch:classificationKVDPH')
        end

        def centre
          submodel_at(Typ::RefType, 'vch:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'vch:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vch:contract')
        end

        def eet_item
          at 'vch:EETItem'
        end

        def parameters
          submodel_at(Typ::ParametersType, 'vch:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:text] = text if has? 'vch:text'
          hash[:quantity] = quantity if has? 'vch:quantity'
          hash[:unit] = unit if has? 'vch:unit'
          hash[:coefficient] = coefficient if has? 'vch:coefficient'
          hash[:pay_vat] = pay_vat if has? 'vch:payVAT'
          hash[:rate_vat] = rate_vat if has? 'vch:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'vch:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'vch:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'vch:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'vch:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'vch:typeServiceMOSS'
          hash[:note] = note if has? 'vch:note'
          hash[:code] = code if has? 'vch:code'
          hash[:sym_par] = sym_par if has? 'vch:symPar'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'vch:stockItem'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'vch:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'vch:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'vch:classificationKVDPH'
          hash[:centre] = centre.to_h_with_attrs if has? 'vch:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'vch:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'vch:contract'
          hash[:eet_item] = eet_item if has? 'vch:EETItem'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'vch:parameters'

          hash
        end
      end
    end
  end
end