module Pohoda
  module Parsers
    module Pro
      class ProdejkaItemType
        include ParserCore::BaseParser

        def text
          at 'pro:text'
        end

        def text_attributes
          attributes_at 'pro:text'
        end

        def quantity
          at 'pro:quantity'
        end

        def quantity_attributes
          attributes_at 'pro:quantity'
        end

        def unit
          at 'pro:unit'
        end

        def unit_attributes
          attributes_at 'pro:unit'
        end

        def coefficient
          at 'pro:coefficient'
        end

        def coefficient_attributes
          attributes_at 'pro:coefficient'
        end

        def pay_vat
          at 'pro:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'pro:payVAT'
        end

        def rate_vat
          at 'pro:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'pro:rateVAT'
        end

        def percent_vat
          at 'pro:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'pro:percentVAT'
        end

        def discount_percentage
          at 'pro:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'pro:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'pro:homeCurrency')
        end

        def note
          at 'pro:note'
        end

        def note_attributes
          attributes_at 'pro:note'
        end

        def code
          at 'pro:code'
        end

        def code_attributes
          attributes_at 'pro:code'
        end

        def guarantee
          at 'pro:guarantee'
        end

        def guarantee_attributes
          attributes_at 'pro:guarantee'
        end

        def guarantee_type
          at 'pro:guaranteeType'
        end

        def guarantee_type_attributes
          attributes_at 'pro:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'pro:stockItem')
        end

        def accounting
          submodel_at(Typ::RefType, 'pro:accounting')
        end

        def centre
          submodel_at(Typ::RefType, 'pro:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pro:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pro:contract')
        end

        def expiration_date
          at 'pro:expirationDate'
        end

        def expiration_date_attributes
          attributes_at 'pro:expirationDate'
        end

        def eet_item
          at 'pro:EETItem'
        end

        def eet_item_attributes
          attributes_at 'pro:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pro:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:text] = text if has? 'pro:text'
          hash[:text_attributes] = text_attributes if has? 'pro:text'
          hash[:quantity] = quantity if has? 'pro:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'pro:quantity'
          hash[:unit] = unit if has? 'pro:unit'
          hash[:unit_attributes] = unit_attributes if has? 'pro:unit'
          hash[:coefficient] = coefficient if has? 'pro:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'pro:coefficient'
          hash[:pay_vat] = pay_vat if has? 'pro:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'pro:payVAT'
          hash[:rate_vat] = rate_vat if has? 'pro:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'pro:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'pro:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'pro:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'pro:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'pro:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'pro:homeCurrency'
          hash[:note] = note if has? 'pro:note'
          hash[:note_attributes] = note_attributes if has? 'pro:note'
          hash[:code] = code if has? 'pro:code'
          hash[:code_attributes] = code_attributes if has? 'pro:code'
          hash[:guarantee] = guarantee if has? 'pro:guarantee'
          hash[:guarantee_attributes] = guarantee_attributes if has? 'pro:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'pro:guaranteeType'
          hash[:guarantee_type_attributes] = guarantee_type_attributes if has? 'pro:guaranteeType'
          hash[:stock_item] = stock_item.to_h if has? 'pro:stockItem'
          hash[:accounting] = accounting.to_h if has? 'pro:accounting'
          hash[:centre] = centre.to_h if has? 'pro:centre'
          hash[:activity] = activity.to_h if has? 'pro:activity'
          hash[:contract] = contract.to_h if has? 'pro:contract'
          hash[:expiration_date] = expiration_date if has? 'pro:expirationDate'
          hash[:expiration_date_attributes] = expiration_date_attributes if has? 'pro:expirationDate'
          hash[:eet_item] = eet_item if has? 'pro:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'pro:EETItem'
          hash[:parameters] = parameters.map(&:to_h) if has? 'pro:parameters'

          hash
        end
      end
    end
  end
end