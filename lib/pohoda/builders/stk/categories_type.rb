module Pohoda
  module Builders
    module Stk
      class CategoriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :id_category
            data[:id_category].map { |i| Ox::Element.new('stk:idCategory') << i }.each { |i| root << i }
          end

          root
        end
      end
    end
  end
end