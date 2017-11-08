module Pohoda
  class Address
    include BaseElement

    def company
      text_at 'typ:company'
    end

    def name
      text_at 'typ:name'
    end

    def division
      text_at 'typ:division'
    end

    def street
      text_at 'typ:street'
    end

    def city
      text_at 'typ:city'
    end

    def zip
      text_at 'typ:zip'
    end

    def ico
      text_at 'typ:ico'
    end

    def dic
      text_at 'typ:dic'
    end

    def ic_dph
      text_at 'typ:icDph'
    end

    def country
      element_xml = at_xpath 'typ:country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      text_at 'typ:phone'
    end

    def mobil_phone
      text_at 'typ:mobilPhone'
    end

    def fax
      text_at 'typ:fax'
    end

    def email
      text_at 'typ:email'
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
