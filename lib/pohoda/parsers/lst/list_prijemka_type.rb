module Pohoda
  module Parsers
    module Lst
      class ListPrijemkaType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def prijemka
          array_of_at(Pri::PrijemkaType, ['lst:prijemka'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prijemka] = prijemka.map(&:to_h) if has? 'lst:prijemka'

          hash
          super.merge(hash)
        end
      end
    end
  end
end