module Pohoda
  module Parsers
    module Ord
      class OrderItemType
        include ParserCore::BaseParser

        def id
          at 'ord:id'
        end

        def id_attributes
          attributes_at 'ord:id'
        end

        def ext_id
          at 'ord:extId'
        end

        def ext_id_attributes
          attributes_at 'ord:extId'
        end

        def text
          at 'ord:text'
        end

        def text_attributes
          attributes_at 'ord:text'
        end

        def quantity
          at 'ord:quantity'
        end

        def quantity_attributes
          attributes_at 'ord:quantity'
        end

        def delivered
          at 'ord:delivered'
        end

        def delivered_attributes
          attributes_at 'ord:delivered'
        end

        def unit
          at 'ord:unit'
        end

        def unit_attributes
          attributes_at 'ord:unit'
        end

        def coefficient
          at 'ord:coefficient'
        end

        def coefficient_attributes
          attributes_at 'ord:coefficient'
        end

        def pay_vat
          at 'ord:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'ord:payVAT'
        end

        def rate_vat
          at 'ord:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'ord:rateVAT'
        end

        def percent_vat
          at 'ord:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'ord:percentVAT'
        end

        def discount_percentage
          at 'ord:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'ord:discountPercentage'
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

        def note_attributes
          attributes_at 'ord:note'
        end

        def code
          at 'ord:code'
        end

        def code_attributes
          attributes_at 'ord:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'ord:stockItem')
        end

        def link_to_stock
          submodel_at(Typ::LinkToStockType, 'ord:linkToStock')
        end

        def pdp
          at 'ord:PDP'
        end

        def pdp_attributes
          attributes_at 'ord:PDP'
        end

        def code_pdp
          at 'ord:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'ord:CodePDP'
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

        def eet_item_attributes
          attributes_at 'ord:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['ord:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ord:id'
          hash[:id_attributes] = id_attributes if has? 'ord:id'
          hash[:ext_id] = ext_id if has? 'ord:extId'
          hash[:ext_id_attributes] = ext_id_attributes if has? 'ord:extId'
          hash[:text] = text if has? 'ord:text'
          hash[:text_attributes] = text_attributes if has? 'ord:text'
          hash[:quantity] = quantity if has? 'ord:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'ord:quantity'
          hash[:delivered] = delivered if has? 'ord:delivered'
          hash[:delivered_attributes] = delivered_attributes if has? 'ord:delivered'
          hash[:unit] = unit if has? 'ord:unit'
          hash[:unit_attributes] = unit_attributes if has? 'ord:unit'
          hash[:coefficient] = coefficient if has? 'ord:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'ord:coefficient'
          hash[:pay_vat] = pay_vat if has? 'ord:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'ord:payVAT'
          hash[:rate_vat] = rate_vat if has? 'ord:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'ord:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'ord:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'ord:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'ord:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'ord:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'ord:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'ord:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h if has? 'ord:typeServiceMOSS'
          hash[:note] = note if has? 'ord:note'
          hash[:note_attributes] = note_attributes if has? 'ord:note'
          hash[:code] = code if has? 'ord:code'
          hash[:code_attributes] = code_attributes if has? 'ord:code'
          hash[:stock_item] = stock_item.to_h if has? 'ord:stockItem'
          hash[:link_to_stock] = link_to_stock.to_h if has? 'ord:linkToStock'
          hash[:pdp] = pdp if has? 'ord:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'ord:PDP'
          hash[:code_pdp] = code_pdp if has? 'ord:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'ord:CodePDP'
          hash[:centre] = centre.to_h if has? 'ord:centre'
          hash[:activity] = activity.to_h if has? 'ord:activity'
          hash[:contract] = contract.to_h if has? 'ord:contract'
          hash[:eet_item] = eet_item if has? 'ord:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'ord:EETItem'
          hash[:parameters] = parameters.map(&:to_h) if has? 'ord:parameters'

          hash
        end
      end
    end
  end
end