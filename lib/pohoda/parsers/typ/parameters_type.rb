module Pohoda
  module Parsers
    module Typ
      class ParametersType
        include ParserCore::BaseParser

        def parameter
          array_of_at(Typ::ParameterDocType, ['typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:parameter] = parameter.map(&:to_h) if has? 'typ:parameter'

          hash
        end
      end
    end
  end
end