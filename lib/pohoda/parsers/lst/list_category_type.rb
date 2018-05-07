module Pohoda
  module Parsers
    module Lst
      class ListCategoryType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def category_detail
          array_of_at(Ctg::CategoryDetailType, ['lst:categoryDetail'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:category_detail] = category_detail.map(&:to_h_with_attrs) if has? 'lst:categoryDetail'

          hash
          super.merge(hash)
        end
      end
    end
  end
end