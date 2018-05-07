module Pohoda
  module Parsers
    module Typ
      class RefAddressType
        include ParserCore::BaseParser

        def ref_ad
          at 'typ:refAD'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'typ:extId')
        end

        def address
          submodel_at(Typ::AddressType, 'typ:address')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:ref_ad] = ref_ad if has? 'typ:refAD'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'typ:extId'
          hash[:address] = address.to_h_with_attrs if has? 'typ:address'

          hash
        end
      end
    end
  end
end