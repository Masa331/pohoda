module Pohoda
  module Builders
    module Typ
      class ShipToAddressType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('actionType', data[:action_type]).builder
          end
          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:company', data[:company]) if data.key? :company
          root << build_element('typ:division', data[:division]) if data.key? :division
          root << build_element('typ:name', data[:name]) if data.key? :name
          root << build_element('typ:city', data[:city]) if data.key? :city
          root << build_element('typ:street', data[:street]) if data.key? :street
          root << build_element('typ:zip', data[:zip]) if data.key? :zip
          if data.key? :country
            root << Typ::RefType.new('country', data[:country]).builder
          end
          root << build_element('typ:phone', data[:phone]) if data.key? :phone
          root << build_element('typ:email', data[:email]) if data.key? :email
          root << build_element('typ:defaultShipAddress', data[:default_ship_address]) if data.key? :default_ship_address

          root
        end
      end
    end
  end
end