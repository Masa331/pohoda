module Pohoda
  module Parsers
    module Ftr
      class SelectedIcoType
        include ParserCore::BaseParser

        def ico
          array_of_at(Typ::IcoType, ['ftr:ico'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:ico] = ico.map(&:to_h) if has? 'ftr:ico'

          hash
        end
      end
    end
  end
end