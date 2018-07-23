module Pohoda
  module Builders
    module Ftr
      class FilterStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('ftr:extId', data[:ext_id]).builder
          end
          root << build_element('ftr:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('ftr:EAN', data[:ean], data[:ean_attributes]) if data.key? :ean
          root << build_element('ftr:PLU', data[:plu], data[:plu_attributes]) if data.key? :plu
          root << build_element('ftr:name', data[:name], data[:name_attributes]) if data.key? :name
          if data.key? :storage
            root << Typ::RefTypeStorage.new('ftr:storage', data[:storage]).builder
          end
          if data.key? :store
            root << Typ::RefType.new('ftr:store', data[:store]).builder
          end
          root << build_element('ftr:internet', data[:internet], data[:internet_attributes]) if data.key? :internet
          root << build_element('ftr:lastChanges', data[:last_changes], data[:last_changes_attributes]) if data.key? :last_changes

          root
        end
      end
    end
  end
end