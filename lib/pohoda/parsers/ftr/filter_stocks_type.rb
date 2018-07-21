module Pohoda
  module Parsers
    module Ftr
      class FilterStocksType
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

        def code
          at 'ftr:code'
        end

        def code_attributes
          attributes_at 'ftr:code'
        end

        def ean
          at 'ftr:EAN'
        end

        def ean_attributes
          attributes_at 'ftr:EAN'
        end

        def plu
          at 'ftr:PLU'
        end

        def plu_attributes
          attributes_at 'ftr:PLU'
        end

        def name
          at 'ftr:name'
        end

        def name_attributes
          attributes_at 'ftr:name'
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

        def internet_attributes
          attributes_at 'ftr:internet'
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def last_changes_attributes
          attributes_at 'ftr:lastChanges'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h if has? 'ftr:extId'
          hash[:code] = code if has? 'ftr:code'
          hash[:code_attributes] = code_attributes if has? 'ftr:code'
          hash[:ean] = ean if has? 'ftr:EAN'
          hash[:ean_attributes] = ean_attributes if has? 'ftr:EAN'
          hash[:plu] = plu if has? 'ftr:PLU'
          hash[:plu_attributes] = plu_attributes if has? 'ftr:PLU'
          hash[:name] = name if has? 'ftr:name'
          hash[:name_attributes] = name_attributes if has? 'ftr:name'
          hash[:storage] = storage.to_h if has? 'ftr:storage'
          hash[:store] = store.to_h if has? 'ftr:store'
          hash[:internet] = internet if has? 'ftr:internet'
          hash[:internet_attributes] = internet_attributes if has? 'ftr:internet'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'
          hash[:last_changes_attributes] = last_changes_attributes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end