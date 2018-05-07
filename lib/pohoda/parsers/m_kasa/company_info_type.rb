module Pohoda
  module Parsers
    module MKasa
      class CompanyInfoType
        include ParserCore::BaseParser

        def address
          submodel_at(Typ::AddressInternetType, 'mKasa:address')
        end

        def establishment
          submodel_at(Typ::EstablishmentType, 'mKasa:establishment')
        end

        def unit_type
          at 'mKasa:unitType'
        end

        def suffix
          at 'mKasa:suffix'
        end

        def state_type
          at 'mKasa:stateType'
        end

        def register
          at 'mKasa:register'
        end

        def vat_payer
          submodel_at(MKasa::VatPayerType, 'mKasa:vatPayer')
        end

        def change_for_food_vouchers
          at 'mKasa:changeForFoodVouchers'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:address] = address.to_h_with_attrs if has? 'mKasa:address'
          hash[:establishment] = establishment.to_h_with_attrs if has? 'mKasa:establishment'
          hash[:unit_type] = unit_type if has? 'mKasa:unitType'
          hash[:suffix] = suffix if has? 'mKasa:suffix'
          hash[:state_type] = state_type if has? 'mKasa:stateType'
          hash[:register] = register if has? 'mKasa:register'
          hash[:vat_payer] = vat_payer.to_h_with_attrs if has? 'mKasa:vatPayer'
          hash[:change_for_food_vouchers] = change_for_food_vouchers if has? 'mKasa:changeForFoodVouchers'

          hash
        end
      end
    end
  end
end