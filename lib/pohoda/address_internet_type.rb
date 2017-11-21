module Pohoda
  class AddressInternetType
    include BaseElement

    def company
      text_at 'company'
    end

    def title
      text_at 'title'
    end

    def surname
      text_at 'surname'
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

    def number
      text_at 'number'
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

    def www
      text_at 'www'
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
