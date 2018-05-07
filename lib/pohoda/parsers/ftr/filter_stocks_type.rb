module Pohoda
  module Parsers
    module Ftr
      class FilterStocksType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ftr:extId')
        end

        def code
          at 'ftr:code'
        end

        def ean
          at 'ftr:EAN'
        end

        def plu
          at 'ftr:PLU'
        end

        def name
          at 'ftr:name'
        end

        def storage
          submodel_at(Typ::RefTypeStorage, 'ftr:storage')
        end

        def store
          submodel_at(Typ::RefType, 'ftr:store')
        end

        def internet
          at 'ftr:internet'
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'ftr:extId'
          hash[:code] = code if has? 'ftr:code'
          hash[:ean] = ean if has? 'ftr:EAN'
          hash[:plu] = plu if has? 'ftr:PLU'
          hash[:name] = name if has? 'ftr:name'
          hash[:storage] = storage.to_h_with_attrs if has? 'ftr:storage'
          hash[:store] = store.to_h_with_attrs if has? 'ftr:store'
          hash[:internet] = internet if has? 'ftr:internet'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end