module Pohoda
  module Parsers
    module Idp
      class Address2
        include ParserCore::BaseParser

        def id
          at 'idp:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'idp:extId')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'idp:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'idp:extId'

          hash
        end
      end
    end
  end
end