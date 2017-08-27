module Pohoda
  class ShippingToAddress
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

    def postal_code
      t 'typ:zip'
    end

    def country_id
      t 'typ:country/typ:ids'
    end

    def phone
      t 'typ:phone'
    end

    def email
      t 'typ:email'
    end

    def default
      t 'typ:defaultShipAddress'
    end

    def to_h
      { id: id,
        company: company,
        division: division,
        name: name,
        city: city,
        street: street,
        postal_code: postal_code,
        country_id: country_id,
        phone: phone,
        email: email,
        default: default }
    end
  end
end
