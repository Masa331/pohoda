module Pohoda
  module Parsers
    module Enq
      class EnquiryItemType
        include ParserCore::BaseParser

        def id
          at 'enq:id'
        end

        def id_attributes
          attributes_at 'enq:id'
        end

        def text
          at 'enq:text'
        end

        def text_attributes
          attributes_at 'enq:text'
        end

        def quantity
          at 'enq:quantity'
        end

        def quantity_attributes
          attributes_at 'enq:quantity'
        end

        def unit
          at 'enq:unit'
        end

        def unit_attributes
          attributes_at 'enq:unit'
        end

        def coefficient
          at 'enq:coefficient'
        end

        def coefficient_attributes
          attributes_at 'enq:coefficient'
        end

        def pay_vat
          at 'enq:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'enq:payVAT'
        end

        def rate_vat
          at 'enq:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'enq:rateVAT'
        end

        def percent_vat
          at 'enq:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'enq:percentVAT'
        end

        def discount_percentage
          at 'enq:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'enq:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'enq:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'enq:foreignCurrency')
        end

        def pdp
          at 'enq:PDP'
        end

        def pdp_attributes
          attributes_at 'enq:PDP'
        end

        def code_pdp
          at 'enq:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'enq:CodePDP'
        end

        def centre
          submodel_at(Typ::RefType, 'enq:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'enq:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'enq:contract')
        end

        def note
          at 'enq:note'
        end

        def note_attributes
          attributes_at 'enq:note'
        end

        def code
          at 'enq:code'
        end

        def code_attributes
          attributes_at 'enq:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'enq:stockItem')
        end

        def eet_item
          at 'enq:EETItem'
        end

        def eet_item_attributes
          attributes_at 'enq:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['enq:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'enq:id'
          hash[:id_attributes] = id_attributes if has? 'enq:id'
          hash[:text] = text if has? 'enq:text'
          hash[:text_attributes] = text_attributes if has? 'enq:text'
          hash[:quantity] = quantity if has? 'enq:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'enq:quantity'
          hash[:unit] = unit if has? 'enq:unit'
          hash[:unit_attributes] = unit_attributes if has? 'enq:unit'
          hash[:coefficient] = coefficient if has? 'enq:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'enq:coefficient'
          hash[:pay_vat] = pay_vat if has? 'enq:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'enq:payVAT'
          hash[:rate_vat] = rate_vat if has? 'enq:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'enq:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'enq:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'enq:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'enq:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'enq:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'enq:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'enq:foreignCurrency'
          hash[:pdp] = pdp if has? 'enq:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'enq:PDP'
          hash[:code_pdp] = code_pdp if has? 'enq:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'enq:CodePDP'
          hash[:centre] = centre.to_h if has? 'enq:centre'
          hash[:activity] = activity.to_h if has? 'enq:activity'
          hash[:contract] = contract.to_h if has? 'enq:contract'
          hash[:note] = note if has? 'enq:note'
          hash[:note_attributes] = note_attributes if has? 'enq:note'
          hash[:code] = code if has? 'enq:code'
          hash[:code_attributes] = code_attributes if has? 'enq:code'
          hash[:stock_item] = stock_item.to_h if has? 'enq:stockItem'
          hash[:eet_item] = eet_item if has? 'enq:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'enq:EETItem'
          hash[:parameters] = parameters.map(&:to_h) if has? 'enq:parameters'

          hash
        end
      end
    end
  end
end