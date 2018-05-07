module Pohoda
  module Parsers
    module Ftr
      class SelectedIcoType
        include ParserCore::BaseParser

        def ico
          array_of_at(Typ::IcoType, ['ftr:ico'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:ico] = ico.map(&:to_h_with_attrs) if has? 'ftr:ico'

          hash
        end
      end
    end
  end
end