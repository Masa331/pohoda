module Pohoda
  module Parsers
    module Ftr
      class FilterExtIdType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ftr:extId')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'ftr:extId'

          hash
        end
      end
    end
  end
end