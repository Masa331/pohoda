module Pohoda
  module Builders
    module Lst
      class ListCategoryType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :category_detail
            data[:category_detail].each { |i| root << Ctg::CategoryDetailType.new('lst:categoryDetail', i).builder }
          end

          root
        end
      end
    end
  end
end