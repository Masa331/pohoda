module Pohoda
  module Parsers
    module Typ
      class EstablishmentType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def company_attributes
          attributes_at 'typ:company'
        end

        def city
          at 'typ:city'
        end

        def city_attributes
          attributes_at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def street_attributes
          attributes_at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def zip_attributes
          attributes_at 'typ:zip'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:company] = company if has? 'typ:company'
          hash[:company_attributes] = company_attributes if has? 'typ:company'
          hash[:city] = city if has? 'typ:city'
          hash[:city_attributes] = city_attributes if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:street_attributes] = street_attributes if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:zip_attributes] = zip_attributes if has? 'typ:zip'

          hash
        end
      end
    end
  end
end