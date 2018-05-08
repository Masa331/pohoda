module Pohoda
  module Parsers
    module Inv
      class InvoiceItemType
        include ParserCore::BaseParser

        def link
          submodel_at(Typ::LinkItemType, 'inv:link')
        end

        def id
          at 'inv:id'
        end

        def text
          at 'inv:text'
        end

        def quantity
          at 'inv:quantity'
        end

        def unit
          at 'inv:unit'
        end

        def coefficient
          at 'inv:coefficient'
        end

        def pay_vat
          at 'inv:payVAT'
        end

        def rate_vat
          at 'inv:rateVAT'
        end

        def percent_vat
          at 'inv:percentVAT'
        end

        def discount_percentage
          at 'inv:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'inv:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'inv:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'inv:typeServiceMOSS')
        end

        def note
          at 'inv:note'
        end

        def code
          at 'inv:code'
        end

        def guarantee
          at 'inv:guarantee'
        end

        def guarantee_type
          at 'inv:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'inv:stockItem')
        end

        def accounting
          submodel_at(Typ::RefType, 'inv:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'inv:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'inv:classificationKVDPH')
        end

        def centre
          submodel_at(Typ::RefType, 'inv:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'inv:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'inv:contract')
        end

        def expiration_date
          at 'inv:expirationDate'
        end

        def intrastat_item
          submodel_at(Inv::IntrastatItemType, 'inv:intrastatItem')
        end

        def eet_item
          at 'inv:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['inv:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:link] = link.to_h_with_attrs if has? 'inv:link'
          hash[:id] = id if has? 'inv:id'
          hash[:text] = text if has? 'inv:text'
          hash[:quantity] = quantity if has? 'inv:quantity'
          hash[:unit] = unit if has? 'inv:unit'
          hash[:coefficient] = coefficient if has? 'inv:coefficient'
          hash[:pay_vat] = pay_vat if has? 'inv:payVAT'
          hash[:rate_vat] = rate_vat if has? 'inv:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'inv:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'inv:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'inv:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'inv:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'inv:typeServiceMOSS'
          hash[:note] = note if has? 'inv:note'
          hash[:code] = code if has? 'inv:code'
          hash[:guarantee] = guarantee if has? 'inv:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'inv:guaranteeType'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'inv:stockItem'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'inv:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'inv:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'inv:classificationKVDPH'
          hash[:centre] = centre.to_h_with_attrs if has? 'inv:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'inv:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'inv:contract'
          hash[:expiration_date] = expiration_date if has? 'inv:expirationDate'
          hash[:intrastat_item] = intrastat_item.to_h_with_attrs if has? 'inv:intrastatItem'
          hash[:eet_item] = eet_item if has? 'inv:EETItem'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'inv:parameters'

          hash
        end
      end
    end
  end
end