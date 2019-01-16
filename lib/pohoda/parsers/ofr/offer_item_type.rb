module Pohoda
  module Parsers
    module Ofr
      class OfferItemType
        include ParserCore::BaseParser

        def id
          at 'ofr:id'
        end

        def id_attributes
          attributes_at 'ofr:id'
        end

        def text
          at 'ofr:text'
        end

        def text_attributes
          attributes_at 'ofr:text'
        end

        def quantity
          at 'ofr:quantity'
        end

        def quantity_attributes
          attributes_at 'ofr:quantity'
        end

        def unit
          at 'ofr:unit'
        end

        def unit_attributes
          attributes_at 'ofr:unit'
        end

        def coefficient
          at 'ofr:coefficient'
        end

        def coefficient_attributes
          attributes_at 'ofr:coefficient'
        end

        def pay_vat
          at 'ofr:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'ofr:payVAT'
        end

        def rate_vat
          at 'ofr:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'ofr:rateVAT'
        end

        def percent_vat
          at 'ofr:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'ofr:percentVAT'
        end

        def discount_percentage
          at 'ofr:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'ofr:discountPercentage'
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

        def pdp
          at 'ofr:PDP'
        end

        def pdp_attributes
          attributes_at 'ofr:PDP'
        end

        def code_pdp
          at 'ofr:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'ofr:CodePDP'
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

        def note_attributes
          attributes_at 'ofr:note'
        end

        def code
          at 'ofr:code'
        end

        def code_attributes
          attributes_at 'ofr:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'ofr:stockItem')
        end

        def eet_item
          at 'ofr:EETItem'
        end

        def eet_item_attributes
          attributes_at 'ofr:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['ofr:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ofr:id'
          hash[:id_attributes] = id_attributes if has? 'ofr:id'
          hash[:text] = text if has? 'ofr:text'
          hash[:text_attributes] = text_attributes if has? 'ofr:text'
          hash[:quantity] = quantity if has? 'ofr:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'ofr:quantity'
          hash[:unit] = unit if has? 'ofr:unit'
          hash[:unit_attributes] = unit_attributes if has? 'ofr:unit'
          hash[:coefficient] = coefficient if has? 'ofr:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'ofr:coefficient'
          hash[:pay_vat] = pay_vat if has? 'ofr:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'ofr:payVAT'
          hash[:rate_vat] = rate_vat if has? 'ofr:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'ofr:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'ofr:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'ofr:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'ofr:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'ofr:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'ofr:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'ofr:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h if has? 'ofr:typeServiceMOSS'
          hash[:pdp] = pdp if has? 'ofr:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'ofr:PDP'
          hash[:code_pdp] = code_pdp if has? 'ofr:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'ofr:CodePDP'
          hash[:centre] = centre.to_h if has? 'ofr:centre'
          hash[:activity] = activity.to_h if has? 'ofr:activity'
          hash[:contract] = contract.to_h if has? 'ofr:contract'
          hash[:note] = note if has? 'ofr:note'
          hash[:note_attributes] = note_attributes if has? 'ofr:note'
          hash[:code] = code if has? 'ofr:code'
          hash[:code_attributes] = code_attributes if has? 'ofr:code'
          hash[:stock_item] = stock_item.to_h if has? 'ofr:stockItem'
          hash[:eet_item] = eet_item if has? 'ofr:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'ofr:EETItem'
          hash[:parameters] = parameters.map(&:to_h) if has? 'ofr:parameters'

          hash
        end
      end
    end
  end
end