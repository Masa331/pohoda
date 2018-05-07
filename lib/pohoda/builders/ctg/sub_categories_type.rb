module Pohoda
  module Builders
    module Ctg
      class SubCategoriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :category
            data[:category].each { |i| root << Ctg::CategoryType.new('ctg:category', i).builder }
          end

          root
        end
      end
    end
  end
end