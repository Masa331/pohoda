module Pohoda
  module Builders
    module Typ
      class ShipToAddressType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('typ:actionType', data[:action_type]).builder
          end
          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:extId', data[:ext_id], data[:ext_id_attributes]) if data.key? :ext_id
          root << build_element('typ:company', data[:company], data[:company_attributes]) if data.key? :company
          root << build_element('typ:division', data[:division], data[:division_attributes]) if data.key? :division
          root << build_element('typ:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('typ:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('typ:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('typ:zip', data[:zip], data[:zip_attributes]) if data.key? :zip
          if data.key? :country
            root << Typ::RefType.new('typ:country', data[:country]).builder
          end
          root << build_element('typ:phone', data[:phone], data[:phone_attributes]) if data.key? :phone
          root << build_element('typ:email', data[:email], data[:email_attributes]) if data.key? :email
          root << build_element('typ:defaultShipAddress', data[:default_ship_address], data[:default_ship_address_attributes]) if data.key? :default_ship_address

          root
        end
      end
    end
  end
end