module Pohoda
  module Parsers
    module Lst
      class ListEstablishmentType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def establishment
          array_of_at(Est::EstablishmentType, ['lst:establishment'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:establishment] = establishment.map(&:to_h) if has? 'lst:establishment'

          hash
          super.merge(hash)
        end
      end
    end
  end
end