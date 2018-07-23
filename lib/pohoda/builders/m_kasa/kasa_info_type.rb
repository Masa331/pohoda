module Pohoda
  module Builders
    module MKasa
      class KasaInfoType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('mKasa:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('mKasa:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('mKasa:deviceGuid', data[:device_guid], data[:device_guid_attributes]) if data.key? :device_guid
          if data.key? :establishment
            root << MKasa::KasaEstablishmentType.new('mKasa:establishment', data[:establishment]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('mKasa:centre', data[:centre]).builder
          end
          if data.key? :default_store
            root << Typ::RefType.new('mKasa:defaultStore', data[:default_store]).builder
          end
          if data.key? :default_selling_price
            root << Typ::RefType.new('mKasa:defaultSellingPrice', data[:default_selling_price]).builder
          end
          if data.key? :default_payment_type
            root << Typ::RefType.new('mKasa:defaultPaymentType', data[:default_payment_type]).builder
          end
          root << build_element('mKasa:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('mKasa:footer', data[:footer], data[:footer_attributes]) if data.key? :footer
          root << build_element('mKasa:payVat', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat

          root
        end
      end
    end
  end
end