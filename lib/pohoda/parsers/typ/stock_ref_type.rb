module Pohoda
  module Parsers
    module Typ
      class StockRefType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'typ:extId')
        end

        def ean
          at 'typ:EAN'
        end

        def plu
          at 'typ:PLU'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'typ:extId'
          hash[:ean] = ean if has? 'typ:EAN'
          hash[:plu] = plu if has? 'typ:PLU'

          hash
        end
      end
    end
  end
end