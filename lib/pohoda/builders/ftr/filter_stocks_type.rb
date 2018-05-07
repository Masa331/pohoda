module Pohoda
  module Builders
    module Ftr
      class FilterStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ftr:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('ftr:extId', data[:ext_id]).builder
          end
          root << build_element('ftr:code', data[:code]) if data.key? :code
          root << build_element('ftr:EAN', data[:ean]) if data.key? :ean
          root << build_element('ftr:PLU', data[:plu]) if data.key? :plu
          root << build_element('ftr:name', data[:name]) if data.key? :name
          if data.key? :storage
            root << Typ::RefTypeStorage.new('ftr:storage', data[:storage]).builder
          end
          if data.key? :store
            root << Typ::RefType.new('ftr:store', data[:store]).builder
          end
          root << build_element('ftr:internet', data[:internet]) if data.key? :internet
          root << build_element('ftr:lastChanges', data[:last_changes]) if data.key? :last_changes

          root
        end
      end
    end
  end
end