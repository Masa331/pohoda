module Pohoda
  module Parsers
    module Vyd
      class VydejkaItemType
        include ParserCore::BaseParser

        def link
          submodel_at(Typ::LinkItemType, 'vyd:link')
        end

        def id
          at 'vyd:id'
        end

        def id_attributes
          attributes_at 'vyd:id'
        end

        def text
          at 'vyd:text'
        end

        def text_attributes
          attributes_at 'vyd:text'
        end

        def quantity
          at 'vyd:quantity'
        end

        def quantity_attributes
          attributes_at 'vyd:quantity'
        end

        def unit
          at 'vyd:unit'
        end

        def unit_attributes
          attributes_at 'vyd:unit'
        end

        def coefficient
          at 'vyd:coefficient'
        end

        def coefficient_attributes
          attributes_at 'vyd:coefficient'
        end

        def pay_vat
          at 'vyd:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'vyd:payVAT'
        end

        def rate_vat
          at 'vyd:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'vyd:rateVAT'
        end

        def percent_vat
          at 'vyd:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'vyd:percentVAT'
        end

        def discount_percentage
          at 'vyd:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'vyd:discountPercentage'
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

        def note_attributes
          attributes_at 'vyd:note'
        end

        def code
          at 'vyd:code'
        end

        def code_attributes
          attributes_at 'vyd:code'
        end

        def guarantee
          at 'vyd:guarantee'
        end

        def guarantee_attributes
          attributes_at 'vyd:guarantee'
        end

        def guarantee_type
          at 'vyd:guaranteeType'
        end

        def guarantee_type_attributes
          attributes_at 'vyd:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'vyd:stockItem')
        end

        def link_to_stock
          submodel_at(Typ::LinkToStockType, 'vyd:linkToStock')
        end

        def acc
          at 'vyd:acc'
        end

        def acc_attributes
          attributes_at 'vyd:acc'
        end

        def pdp
          at 'vyd:PDP'
        end

        def pdp_attributes
          attributes_at 'vyd:PDP'
        end

        def code_pdp
          at 'vyd:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'vyd:CodePDP'
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

        def expiration_date_attributes
          attributes_at 'vyd:expirationDate'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['vyd:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:link] = link.to_h if has? 'vyd:link'
          hash[:id] = id if has? 'vyd:id'
          hash[:id_attributes] = id_attributes if has? 'vyd:id'
          hash[:text] = text if has? 'vyd:text'
          hash[:text_attributes] = text_attributes if has? 'vyd:text'
          hash[:quantity] = quantity if has? 'vyd:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'vyd:quantity'
          hash[:unit] = unit if has? 'vyd:unit'
          hash[:unit_attributes] = unit_attributes if has? 'vyd:unit'
          hash[:coefficient] = coefficient if has? 'vyd:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'vyd:coefficient'
          hash[:pay_vat] = pay_vat if has? 'vyd:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'vyd:payVAT'
          hash[:rate_vat] = rate_vat if has? 'vyd:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'vyd:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'vyd:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'vyd:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'vyd:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'vyd:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'vyd:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'vyd:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h if has? 'vyd:typeServiceMOSS'
          hash[:note] = note if has? 'vyd:note'
          hash[:note_attributes] = note_attributes if has? 'vyd:note'
          hash[:code] = code if has? 'vyd:code'
          hash[:code_attributes] = code_attributes if has? 'vyd:code'
          hash[:guarantee] = guarantee if has? 'vyd:guarantee'
          hash[:guarantee_attributes] = guarantee_attributes if has? 'vyd:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'vyd:guaranteeType'
          hash[:guarantee_type_attributes] = guarantee_type_attributes if has? 'vyd:guaranteeType'
          hash[:stock_item] = stock_item.to_h if has? 'vyd:stockItem'
          hash[:link_to_stock] = link_to_stock.to_h if has? 'vyd:linkToStock'
          hash[:acc] = acc if has? 'vyd:acc'
          hash[:acc_attributes] = acc_attributes if has? 'vyd:acc'
          hash[:pdp] = pdp if has? 'vyd:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'vyd:PDP'
          hash[:code_pdp] = code_pdp if has? 'vyd:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'vyd:CodePDP'
          hash[:centre] = centre.to_h if has? 'vyd:centre'
          hash[:activity] = activity.to_h if has? 'vyd:activity'
          hash[:contract] = contract.to_h if has? 'vyd:contract'
          hash[:expiration_date] = expiration_date if has? 'vyd:expirationDate'
          hash[:expiration_date_attributes] = expiration_date_attributes if has? 'vyd:expirationDate'
          hash[:parameters] = parameters.map(&:to_h) if has? 'vyd:parameters'

          hash
        end
      end
    end
  end
end