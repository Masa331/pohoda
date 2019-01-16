module Pohoda
  module Parsers
    module Gdp
      class GDPRType
        include ParserCore::BaseParser

        def gdpr_header
          submodel_at(Gdp::GDPRHeaderType, 'gdp:GDPRHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:gdpr_header] = gdpr_header.to_h if has? 'gdp:GDPRHeader'

          hash
        end
      end
    end
  end
end