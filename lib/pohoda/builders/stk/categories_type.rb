module Pohoda
  module Builders
    module Stk
      class CategoriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :id_category
            data[:id_category].map { |i| Ox::Element.new('stk:idCategory') << i }.each { |i| root << i }
          end

          root
        end
      end
    end
  end
end