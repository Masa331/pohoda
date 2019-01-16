module Pohoda
  module Builders
    module MKasa
      class CompanyInfoType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:key', data[:key], data[:key_attributes]) if data.key? :key
          if data.key? :address
            root << Typ::AddressInternetType.new('mKasa:address', data[:address]).builder
          end
          if data.key? :establishment
            root << Typ::EstablishmentType.new('mKasa:establishment', data[:establishment]).builder
          end
          root << build_element('mKasa:unitType', data[:unit_type], data[:unit_type_attributes]) if data.key? :unit_type
          root << build_element('mKasa:suffix', data[:suffix], data[:suffix_attributes]) if data.key? :suffix
          root << build_element('mKasa:stateType', data[:state_type], data[:state_type_attributes]) if data.key? :state_type
          root << build_element('mKasa:register', data[:register], data[:register_attributes]) if data.key? :register
          if data.key? :vat_payer
            root << MKasa::VatPayerType.new('mKasa:vatPayer', data[:vat_payer]).builder
          end
          root << build_element('mKasa:changeForFoodVouchers', data[:change_for_food_vouchers], data[:change_for_food_vouchers_attributes]) if data.key? :change_for_food_vouchers

          root
        end
      end
    end
  end
end