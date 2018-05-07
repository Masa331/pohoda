module Pohoda
  module Parsers
    module Grs
      class GroupStocksDetailType
        include ParserCore::BaseParser

        def variant
          array_of_at(Gr::VariantsItemType, ['grs:variant'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:variant] = variant.map(&:to_h_with_attrs) if has? 'grs:variant'

          hash
        end
      end
    end
  end
end