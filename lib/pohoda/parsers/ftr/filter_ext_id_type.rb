module Pohoda
  module Parsers
    module Ftr
      class FilterExtIdType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ftr:extId')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h if has? 'ftr:extId'

          hash
        end
      end
    end
  end
end