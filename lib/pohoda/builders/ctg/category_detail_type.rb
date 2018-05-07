module Pohoda
  module Builders
    module Ctg
      class CategoryDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :category
            root << Ctg::CategoryType.new('category', data[:category]).builder
          end

          root
        end
      end
    end
  end
end