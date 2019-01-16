module Pohoda
  module Parsers
    module Cen
      class CentreType
        include ParserCore::BaseParser

        def centre_header
          submodel_at(Cen::CentreHeaderType, 'cen:centreHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:centre_header] = centre_header.to_h if has? 'cen:centreHeader'

          hash
        end
      end
    end
  end
end