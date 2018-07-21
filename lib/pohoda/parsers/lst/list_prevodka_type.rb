module Pohoda
  module Parsers
    module Lst
      class ListPrevodkaType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def prevodka
          array_of_at(Pre::PrevodkaType, ['lst:prevodka'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prevodka] = prevodka.map(&:to_h) if has? 'lst:prevodka'

          hash
          super.merge(hash)
        end
      end
    end
  end
end