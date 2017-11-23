module Pohoda
  class Establishment
    include BaseElement

    def company
      at :'typ:company'
    end

    def city
      at :'typ:city'
    end

    def street
      at :'typ:street'
    end

    def zip
      at :'typ:zip'
    end

    def to_h
      { company: company,
        city: city,
        street: street,
        zip: zip }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
