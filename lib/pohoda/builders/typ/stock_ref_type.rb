module Pohoda
  module Builders
    module Typ
      class StockRefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:ids', data[:ids]) if data.key? :ids
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('typ:EAN', data[:ean]) if data.key? :ean
          root << build_element('typ:PLU', data[:plu]) if data.key? :plu

          root
        end
      end
    end
  end
end