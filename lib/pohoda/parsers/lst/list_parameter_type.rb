module Pohoda
  module Parsers
    module Lst
      class ListParameterType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def parameter
          array_of_at(Prm::ParameterType, ['lst:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:parameter] = parameter.map(&:to_h) if has? 'lst:parameter'

          hash
          super.merge(hash)
        end
      end
    end
  end
end