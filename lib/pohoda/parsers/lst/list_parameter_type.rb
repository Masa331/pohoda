module Pohoda
  module Parsers
    module Lst
      class ListParameterType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def parameter
          array_of_at(Prm::ParameterType, ['lst:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:parameter] = parameter.map(&:to_h_with_attrs) if has? 'lst:parameter'

          hash
          super.merge(hash)
        end
      end
    end
  end
end