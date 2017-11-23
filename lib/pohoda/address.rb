module Pohoda
  class Address
    include BaseElement

    def company
      at :'typ:company'
    end

    def name
      at :'typ:name'
    end

    def division
      at :'typ:division'
    end

    def street
      at :'typ:street'
    end

    def city
      at :'typ:city'
    end

    def zip
      at :'typ:zip'
    end

    def ico
      at :'typ:ico'
    end

    def dic
      at :'typ:dic'
    end

    def ic_dph
      at :'typ:icDph'
    end

    def country
      element_xml = at :'typ:country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      at :'typ:phone'
    end

    def mobil_phone
      at :'typ:mobilPhone'
    end

    def fax
      at :'typ:fax'
    end

    def email
      at :'typ:email'
    end

    def to_h
      { company: company,
        name: name,
        division: division,
        street: street,
        city: city,
        zip: zip,
        ico: ico,
        dic: dic,
        ic_dph: ic_dph,
        country: country.to_h,
        phone: phone,
        mobil_phone: mobil_phone,
        fax: fax,
        email: email }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
