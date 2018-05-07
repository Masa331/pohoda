module Pohoda
  module Builders
    module MKasa
      class CompanyInfoType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :address
            root << Typ::AddressInternetType.new('address', data[:address]).builder
          end
          if data.key? :establishment
            root << Typ::EstablishmentType.new('establishment', data[:establishment]).builder
          end
          root << build_element('mKasa:unitType', data[:unit_type]) if data.key? :unit_type
          root << build_element('mKasa:suffix', data[:suffix]) if data.key? :suffix
          root << build_element('mKasa:stateType', data[:state_type]) if data.key? :state_type
          root << build_element('mKasa:register', data[:register]) if data.key? :register
          if data.key? :vat_payer
            root << MKasa::VatPayerType.new('vatPayer', data[:vat_payer]).builder
          end
          root << build_element('mKasa:changeForFoodVouchers', data[:change_for_food_vouchers]) if data.key? :change_for_food_vouchers

          root
        end
      end
    end
  end
end