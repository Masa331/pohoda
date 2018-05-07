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

        def company
          at 'typ:company'
        end

        def division
          at 'typ:division'
        end

        def name
          at 'typ:name'
        end

        def city
          at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def country
          submodel_at(Typ::RefType, 'typ:country')
        end

        def phone
          at 'typ:phone'
        end

        def email
          at 'typ:email'
        end

        def default_ship_address
          at 'typ:defaultShipAddress'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'typ:actionType'
          hash[:id] = id if has? 'typ:id'
          hash[:company] = company if has? 'typ:company'
          hash[:division] = division if has? 'typ:division'
          hash[:name] = name if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:country] = country.to_h_with_attrs if has? 'typ:country'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:email] = email if has? 'typ:email'
          hash[:default_ship_address] = default_ship_address if has? 'typ:defaultShipAddress'

          hash
        end
      end
    end
  end
end