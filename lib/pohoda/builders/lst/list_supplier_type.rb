module Pohoda
  module Builders
    module Lst
      class ListSupplierType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :supplier
            data[:supplier].each { |i| root << Sup::SupplierType.new('lst:supplier', i).builder }
          end

          root
        end
      end
    end
  end
end