module Pohoda
  class ShipToAddress
    include BaseElement

    def id
      t 'typ:id'
    end

    def company
      t 'typ:company'
    end

    def division
      t 'typ:division'
    end

    def name
      t 'typ:name'
    end

    def city
      t 'typ:city'
    end

    def street
      t 'typ:street'
    end

    def zip
      t 'typ:zip'
    end

    def country
      RefType.new(e 'typ:country')
    end

    def phone
      t 'typ:phone'
    end

    def email
      t 'typ:email'
    end

    def default_ship_to_address
      t 'typ:defaultShipAddress'
    end

    def to_h
      { id: id,
        company: company,
        division: division,
        name: name,
        city: city,
        street: street,
        zip: zip,
        country: country.to_h,
        phone: phone,
        email: email,
        default_ship_to_address: default_ship_to_address }
    end
  end
end
