module Pohoda
  module Builders
    module Lst
      class ListCategoryType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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