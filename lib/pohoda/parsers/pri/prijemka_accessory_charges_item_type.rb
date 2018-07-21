module Pohoda
  module Parsers
    module Pri
      class PrijemkaAccessoryChargesItemType
        include ParserCore::BaseParser

        def id
          at 'pri:id'
        end

        def id_attributes
          attributes_at 'pri:id'
        end

        def quantity
          at 'pri:quantity'
        end

        def quantity_attributes
          attributes_at 'pri:quantity'
        end

        def pay_vat
          at 'pri:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'pri:payVAT'
        end

        def rate_vat
          at 'pri:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'pri:rateVAT'
        end

        def percent_vat
          at 'pri:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'pri:percentVAT'
        end

        def discount_percentage
          at 'pri:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'pri:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'pri:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'pri:foreignCurrency')
        end

        def note
          at 'pri:note'
        end

        def note_attributes
          attributes_at 'pri:note'
        end

        def centre
          submodel_at(Typ::RefType, 'pri:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pri:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pri:contract')
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pri:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'pri:id'
          hash[:id_attributes] = id_attributes if has? 'pri:id'
          hash[:quantity] = quantity if has? 'pri:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'pri:quantity'
          hash[:pay_vat] = pay_vat if has? 'pri:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'pri:payVAT'
          hash[:rate_vat] = rate_vat if has? 'pri:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'pri:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'pri:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'pri:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'pri:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'pri:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'pri:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'pri:foreignCurrency'
          hash[:note] = note if has? 'pri:note'
          hash[:note_attributes] = note_attributes if has? 'pri:note'
          hash[:centre] = centre.to_h if has? 'pri:centre'
          hash[:activity] = activity.to_h if has? 'pri:activity'
          hash[:contract] = contract.to_h if has? 'pri:contract'
          hash[:parameters] = parameters.map(&:to_h) if has? 'pri:parameters'

          hash
        end
      end
    end
  end
end