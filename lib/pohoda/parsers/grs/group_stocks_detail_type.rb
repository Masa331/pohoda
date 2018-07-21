module Pohoda
  module Parsers
    module Grs
      class GroupStocksDetailType
        include ParserCore::BaseParser

        def variant
          array_of_at(Gr::VariantsItemType, ['grs:variant'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:variant] = variant.map(&:to_h) if has? 'grs:variant'

          hash
        end
      end
    end
  end
end