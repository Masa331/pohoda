module Pohoda
  class AddressInternetType
    include BaseElement

    def company
      text_at 'typ:company'
    end

    def title
      text_at 'typ:title'
    end

    def surname
      text_at 'typ:surname'
    end

    def name
      text_at 'typ:name'
    end

    def city
      text_at 'typ:city'
    end

    def street
      text_at 'typ:street'
    end

    def number
      text_at 'typ:number'
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

    def www
      text_at 'typ:www'
    end

    def to_h
      { company: company,
        title: title,
        surname: surname,
        name: name,
        city: city,
        street: street,
        number: number,
        zip: zip,
        ico: ico,
        dic: dic,
        ic_dph: ic_dph,
        phone: phone,
        mobil_phone: mobil_phone,
        fax: fax,
        email: email,
        www: www }
    end
  end
end
