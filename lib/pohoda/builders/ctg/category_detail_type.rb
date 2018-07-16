module Pohoda
  module Builders
    module Ctg
      class CategoryDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :category
            root << Ctg::CategoryType.new('ctg:category', data[:category]).builder
          end

          root
        end
      end
    end
  end
end