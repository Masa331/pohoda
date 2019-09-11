module Pohoda
  module Builders
    module Typ
      class LinkToStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('typ:extId', data[:ext_id]).builder
          end

          root
        end
      end
    end
  end
end