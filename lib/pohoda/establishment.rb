module Pohoda
  class Establishment
    include BaseElement

    def company
      text_at 'typ:company'
    end

    def city
      text_at 'typ:city'
    end

    def street
      text_at 'typ:street'
    end

    def zip
      text_at 'typ:zip'
    end

    def to_h
      { company: company,
        city: city,
        street: street,
        zip: zip }
    end
  end
end
