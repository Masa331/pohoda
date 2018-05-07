module Pohoda
  module Parsers
    module Int
      class IntDocItemType
        include ParserCore::BaseParser

        def text
          at 'int:text'
        end

        def quantity
          at 'int:quantity'
        end

        def unit
          at 'int:unit'
        end

        def coefficient
          at 'int:coefficient'
        end

        def pay_vat
          at 'int:payVAT'
        end

        def rate_vat
          at 'int:rateVAT'
        end

        def percent_vat
          at 'int:percentVAT'
        end

        def discount_percentage
          at 'int:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'int:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'int:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'int:typeServiceMOSS')
        end

        def note
          at 'int:note'
        end

        def code
          at 'int:code'
        end

        def sym_par
          at 'int:symPar'
        end

        def accounting
          submodel_at(Typ::RefType, 'int:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'int:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'int:classificationKVDPH')
        end

        def centre
          submodel_at(Typ::RefType, 'int:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'int:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'int:contract')
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['int:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:text] = text if has? 'int:text'
          hash[:quantity] = quantity if has? 'int:quantity'
          hash[:unit] = unit if has? 'int:unit'
          hash[:coefficient] = coefficient if has? 'int:coefficient'
          hash[:pay_vat] = pay_vat if has? 'int:payVAT'
          hash[:rate_vat] = rate_vat if has? 'int:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'int:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'int:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'int:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'int:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'int:typeServiceMOSS'
          hash[:note] = note if has? 'int:note'
          hash[:code] = code if has? 'int:code'
          hash[:sym_par] = sym_par if has? 'int:symPar'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'int:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'int:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'int:classificationKVDPH'
          hash[:centre] = centre.to_h_with_attrs if has? 'int:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'int:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'int:contract'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'int:parameters'

          hash
        end
      end
    end
  end
end