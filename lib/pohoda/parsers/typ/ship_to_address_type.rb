module Pohoda
  module Parsers
    module Typ
      class ShipToAddressType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'typ:actionType')
        end

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ext_id
          at 'typ:extId'
        end

        def ext_id_attributes
          attributes_at 'typ:extId'
        end

        def company
          at 'typ:company'
        end

        def company_attributes
          attributes_at 'typ:company'
        end

        def division
          at 'typ:division'
        end

        def division_attributes
          attributes_at 'typ:division'
        end

        def name
          at 'typ:name'
        end

        def name_attributes
          attributes_at 'typ:name'
        end

        def city
          at 'typ:city'
        end

        def city_attributes
          attributes_at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def street_attributes
          attributes_at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def zip_attributes
          attributes_at 'typ:zip'
        end

        def country
          submodel_at(Typ::RefType, 'typ:country')
        end

        def phone
          at 'typ:phone'
        end

        def phone_attributes
          attributes_at 'typ:phone'
        end

        def email
          at 'typ:email'
        end

        def email_attributes
          attributes_at 'typ:email'
        end

        def default_ship_address
          at 'typ:defaultShipAddress'
        end

        def default_ship_address_attributes
          attributes_at 'typ:defaultShipAddress'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'typ:actionType'
          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ext_id] = ext_id if has? 'typ:extId'
          hash[:ext_id_attributes] = ext_id_attributes if has? 'typ:extId'
          hash[:company] = company if has? 'typ:company'
          hash[:company_attributes] = company_attributes if has? 'typ:company'
          hash[:division] = division if has? 'typ:division'
          hash[:division_attributes] = division_attributes if has? 'typ:division'
          hash[:name] = name if has? 'typ:name'
          hash[:name_attributes] = name_attributes if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:city_attributes] = city_attributes if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:street_attributes] = street_attributes if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:zip_attributes] = zip_attributes if has? 'typ:zip'
          hash[:country] = country.to_h if has? 'typ:country'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:phone_attributes] = phone_attributes if has? 'typ:phone'
          hash[:email] = email if has? 'typ:email'
          hash[:email_attributes] = email_attributes if has? 'typ:email'
          hash[:default_ship_address] = default_ship_address if has? 'typ:defaultShipAddress'
          hash[:default_ship_address_attributes] = default_ship_address_attributes if has? 'typ:defaultShipAddress'

          hash
        end
      end
    end
  end
end