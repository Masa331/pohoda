module Pohoda
  module Parsers
    module Pro
      class ProdejkaDetailType
        include ParserCore::BaseParser

        def prodejka_item
          array_of_at(Pro::ProdejkaItemType, ['pro:prodejkaItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prodejka_item] = prodejka_item.map(&:to_h) if has? 'pro:prodejkaItem'

          hash
        end
      end
    end
  end
end