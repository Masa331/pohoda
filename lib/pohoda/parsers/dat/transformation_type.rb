module Pohoda
  module Parsers
    module Dat
      class TransformationType
        include ParserCore::BaseParser

        def input
          at 'dat:input'
        end

        def output
          at 'dat:output'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:input] = input if has? 'dat:input'
          hash[:output] = output if has? 'dat:output'

          hash
        end
      end
    end
  end
end