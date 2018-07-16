module Pohoda
  module Builders
    module Typ
      class StockRefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          if data.key? :ext_id
            root << Typ::ExtIdType.new('typ:extId', data[:ext_id]).builder
          end
          root << build_element('typ:EAN', data[:ean], data[:ean_attributes]) if data.key? :ean
          root << build_element('typ:PLU', data[:plu], data[:plu_attributes]) if data.key? :plu

          root
        end
      end
    end
  end
end