module Pohoda
  class MyAddress
    include BaseElement

    def company
      t 'typ:company'
    end

    def title
      t 'typ:title'
    end

    def surname
      t 'typ:surname'
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

    def number
      t 'typ:number'
    end

    def zip
      t 'typ:zip'
    end

    def ico
      t 'typ:ico'
    end

    def dic
      t 'typ:dic'
    end

    def ic_dph
      t 'typ:icDph'
    end

    def phone
      t 'typ:phone'
    end

    def mobile_phone
      t 'typ:mobilPhone'
    end

    def fax
      t 'typ:email'
    end

    def email
      t 'typ:email'
    end

    def www
      t 'typ:www'
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
        mobile_phone: mobile_phone,
        fax: fax,
        email: email,
        www: www }
    end
  end
end
