module Pohoda
  class Address
    include BaseElement

    def company
      t 'typ:company'
    end

    def name
      t 'typ:name'
    end

    def division
      t 'typ:division'
    end

    def street
      t 'typ:street'
    end

    def city
      t 'typ:city'
    end

    def postal_code
      t 'typ:zip'
    end

    def company_number
      t 'typ:ico'
    end

    def vatin
      t 'typ:vatin'
    end

    def tin
      t 'typ:icDph'
    end

    def country_id
      t 'typ:country/typ:ids'
    end

    def phone
      t 'typ:phone'
    end

    def mobile_phone
      t 'typ:mobilePhone'
    end

    def fax
      t 'typ:fax'
    end

    def email
      t 'typ:email'
    end
  end
end
