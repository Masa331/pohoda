module Pohoda
  class AddressInternetType
    include BaseElement

    def company
      at :'typ:company'
    end

    def title
      at :'typ:title'
    end

    def surname
      at :'typ:surname'
    end

    def name
      at :'typ:name'
    end

    def city
      at :'typ:city'
    end

    def street
      at :'typ:street'
    end

    def number
      at :'typ:number'
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

    def www
      at :'typ:www'
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
        www: www }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
