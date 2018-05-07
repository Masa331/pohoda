module Pohoda
  module Parsers
    module Typ
      class EstablishmentType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def city
          at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:company] = company if has? 'typ:company'
          hash[:city] = city if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'

          hash
        end
      end
    end
  end
end