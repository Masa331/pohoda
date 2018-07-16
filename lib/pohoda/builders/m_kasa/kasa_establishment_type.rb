module Pohoda
  module Builders
    module MKasa
      class KasaEstablishmentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:company', data[:company], data[:company_attributes]) if data.key? :company
          root << build_element('mKasa:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('mKasa:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('mKasa:zip', data[:zip], data[:zip_attributes]) if data.key? :zip
          root << build_element('mKasa:phone', data[:phone], data[:phone_attributes]) if data.key? :phone
          root << build_element('mKasa:mobilPhone', data[:mobil_phone], data[:mobil_phone_attributes]) if data.key? :mobil_phone
          root << build_element('mKasa:fax', data[:fax], data[:fax_attributes]) if data.key? :fax
          root << build_element('mKasa:email', data[:email], data[:email_attributes]) if data.key? :email

          root
        end
      end
    end
  end
end