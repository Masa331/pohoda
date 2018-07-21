module Pohoda
  module Parsers
    module Lst
      class ListProdejkaType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def prodejka
          array_of_at(Pro::ProdejkaType, ['lst:prodejka'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prodejka] = prodejka.map(&:to_h) if has? 'lst:prodejka'

          hash
          super.merge(hash)
        end
      end
    end
  end
end