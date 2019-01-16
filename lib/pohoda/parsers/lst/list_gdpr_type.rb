module Pohoda
  module Parsers
    module Lst
      class ListGDPRType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def gdpr
          array_of_at(Gdp::GDPRType, ['lst:GDPR'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:gdpr] = gdpr.map(&:to_h) if has? 'lst:GDPR'

          hash
          super.merge(hash)
        end
      end
    end
  end
end