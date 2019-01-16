module Pohoda
  module Parsers
    module LCen
      class ListCentreType2 < Rdc::ListVersionType
        include ParserCore::BaseParser

        def centre
          array_of_at(Cen::CentreType, ['lCen:centre'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:centre] = centre.map(&:to_h) if has? 'lCen:centre'

          hash
          super.merge(hash)
        end
      end
    end
  end
end