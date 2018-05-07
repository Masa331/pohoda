module Pohoda
  module Parsers
    module Typ
      class MyAddress
        include ParserCore::BaseParser

        def address
          submodel_at(Typ::AddressInternetType, 'typ:address')
        end

        def establishment
          submodel_at(Typ::EstablishmentType, 'typ:establishment')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:address] = address.to_h_with_attrs if has? 'typ:address'
          hash[:establishment] = establishment.to_h_with_attrs if has? 'typ:establishment'

          hash
        end
      end
    end
  end
end