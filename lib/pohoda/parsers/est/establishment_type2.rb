module Pohoda
  module Parsers
    module Est
      class EstablishmentType2
        include ParserCore::BaseParser

        def establishment_header
          submodel_at(Est::EstablishmentHeaderType, 'est:establishmentHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:establishment_header] = establishment_header.to_h if has? 'est:establishmentHeader'

          hash
        end
      end
    end
  end
end