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

    def postal_code
      t 'typ:zip'
    end

    def company_number
      t 'typ:ico'
    end

    def vatin
      t 'typ:dic'
    end

    def tin
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
        postal_code: postal_code,
        company_number: company_number,
        vatin: vatin,
        tin: tin,
        phone: phone,
        mobile_phone: mobile_phone,
        fax: fax,
        email: email,
        www: www }
    end
  end
end
