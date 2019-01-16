module Pohoda
  module Parsers
    module MKasa
      class CompanyInfoType
        include ParserCore::BaseParser

        def key
          at 'mKasa:key'
        end

        def key_attributes
          attributes_at 'mKasa:key'
        end

        def address
          submodel_at(Typ::AddressInternetType, 'mKasa:address')
        end

        def establishment
          submodel_at(Typ::EstablishmentType, 'mKasa:establishment')
        end

        def unit_type
          at 'mKasa:unitType'
        end

        def unit_type_attributes
          attributes_at 'mKasa:unitType'
        end

        def suffix
          at 'mKasa:suffix'
        end

        def suffix_attributes
          attributes_at 'mKasa:suffix'
        end

        def state_type
          at 'mKasa:stateType'
        end

        def state_type_attributes
          attributes_at 'mKasa:stateType'
        end

        def register
          at 'mKasa:register'
        end

        def register_attributes
          attributes_at 'mKasa:register'
        end

        def vat_payer
          submodel_at(MKasa::VatPayerType, 'mKasa:vatPayer')
        end

        def change_for_food_vouchers
          at 'mKasa:changeForFoodVouchers'
        end

        def change_for_food_vouchers_attributes
          attributes_at 'mKasa:changeForFoodVouchers'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:key] = key if has? 'mKasa:key'
          hash[:key_attributes] = key_attributes if has? 'mKasa:key'
          hash[:address] = address.to_h if has? 'mKasa:address'
          hash[:establishment] = establishment.to_h if has? 'mKasa:establishment'
          hash[:unit_type] = unit_type if has? 'mKasa:unitType'
          hash[:unit_type_attributes] = unit_type_attributes if has? 'mKasa:unitType'
          hash[:suffix] = suffix if has? 'mKasa:suffix'
          hash[:suffix_attributes] = suffix_attributes if has? 'mKasa:suffix'
          hash[:state_type] = state_type if has? 'mKasa:stateType'
          hash[:state_type_attributes] = state_type_attributes if has? 'mKasa:stateType'
          hash[:register] = register if has? 'mKasa:register'
          hash[:register_attributes] = register_attributes if has? 'mKasa:register'
          hash[:vat_payer] = vat_payer.to_h if has? 'mKasa:vatPayer'
          hash[:change_for_food_vouchers] = change_for_food_vouchers if has? 'mKasa:changeForFoodVouchers'
          hash[:change_for_food_vouchers_attributes] = change_for_food_vouchers_attributes if has? 'mKasa:changeForFoodVouchers'

          hash
        end
      end
    end
  end
end