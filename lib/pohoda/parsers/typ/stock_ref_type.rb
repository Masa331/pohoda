module Pohoda
  module Parsers
    module Typ
      class StockRefType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'typ:extId')
        end

        def ean
          at 'typ:EAN'
        end

        def ean_attributes
          attributes_at 'typ:EAN'
        end

        def plu
          at 'typ:PLU'
        end

        def plu_attributes
          attributes_at 'typ:PLU'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:ext_id] = ext_id.to_h if has? 'typ:extId'
          hash[:ean] = ean if has? 'typ:EAN'
          hash[:ean_attributes] = ean_attributes if has? 'typ:EAN'
          hash[:plu] = plu if has? 'typ:PLU'
          hash[:plu_attributes] = plu_attributes if has? 'typ:PLU'

          hash
        end
      end
    end
  end
end