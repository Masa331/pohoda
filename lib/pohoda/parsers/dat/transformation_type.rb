module Pohoda
  module Parsers
    module Dat
      class TransformationType
        include ParserCore::BaseParser

        def input
          at 'dat:input'
        end

        def input_attributes
          attributes_at 'dat:input'
        end

        def output
          at 'dat:output'
        end

        def output_attributes
          attributes_at 'dat:output'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:input] = input if has? 'dat:input'
          hash[:input_attributes] = input_attributes if has? 'dat:input'
          hash[:output] = output if has? 'dat:output'
          hash[:output_attributes] = output_attributes if has? 'dat:output'

          hash
        end
      end
    end
  end
end