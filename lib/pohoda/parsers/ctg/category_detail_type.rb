module Pohoda
  module Parsers
    module Ctg
      class CategoryDetailType
        include ParserCore::BaseParser

        def category
          submodel_at(Ctg::CategoryType, 'ctg:category')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:category] = category.to_h if has? 'ctg:category'

          hash
        end
      end
    end
  end
end