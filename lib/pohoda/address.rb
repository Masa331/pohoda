module Pohoda
  class Address
    include BaseElement

    def company
      text_at 'company'
    end

    def name
      text_at 'name'
    end

    def division
      text_at 'division'
    end

    def street
      text_at 'street'
    end

    def city
      text_at 'city'
    end

    def zip
      text_at 'zip'
    end

    def ico
      text_at 'ico'
    end

    def dic
      text_at 'dic'
    end

    def ic_dph
      text_at 'icDph'
    end

    def country
      element_xml = at_xpath 'country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      text_at 'phone'
    end

    def mobil_phone
      text_at 'mobilPhone'
    end

    def fax
      text_at 'fax'
    end

    def email
      text_at 'email'
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
        email: email }
    end
  end
end
