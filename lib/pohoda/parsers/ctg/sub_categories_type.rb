module Pohoda
  module Parsers
    module Ctg
      class SubCategoriesType
        include ParserCore::BaseParser

        def category
          array_of_at(Ctg::CategoryType, ['ctg:category'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:category] = category.map(&:to_h) if has? 'ctg:category'

          hash
        end
      end
    end
  end
end