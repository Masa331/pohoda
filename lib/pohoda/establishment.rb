module Pohoda
  class Establishment
    include BaseElement

    def company
      text_at 'company'
    end

    def city
      text_at 'city'
    end

    def street
      text_at 'street'
    end

    def zip
      text_at 'zip'
    end

    def to_h
      { company: company,
        city: city,
        street: street,
        zip: zip }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
