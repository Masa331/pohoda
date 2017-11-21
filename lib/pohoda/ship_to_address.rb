module Pohoda
  class ShipToAddress
    include BaseElement

    def id
      text_at 'id'
    end

    def company
      text_at 'company'
    end

    def division
      text_at 'division'
    end

    def name
      text_at 'name'
    end

    def city
      text_at 'city'
    end

    def street
      text_at 'street'
    end

    def zip
      text_at 'zip'
    end

    def country
      element_xml = at_xpath 'country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      text_at 'phone'
    end

    def email
      text_at 'email'
    end

    def default_ship_address
      text_at 'defaultShipAddress'
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
        default_ship_address: default_ship_address }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
