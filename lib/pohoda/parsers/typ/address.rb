module Pohoda
  module Parsers
    module Typ
      class Address
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ext_id
          array_of_at(Typ::ExtIdType, ['typ:extId'])
        end

        def address
          submodel_at(Typ::AddressType, 'typ:address')
        end

        def ship_to_address
          array_of_at(Typ::ShipToAddressType, ['typ:shipToAddress'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ext_id] = ext_id.map(&:to_h) if has? 'typ:extId'
          hash[:address] = address.to_h if has? 'typ:address'
          hash[:ship_to_address] = ship_to_address.map(&:to_h) if has? 'typ:shipToAddress'

          hash
        end
      end
    end
  end
end