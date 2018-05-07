module Pohoda
  module Parsers
    module Rdc
      class PartsType
        include ParserCore::BaseParser

        def part
          array_of_at(String, ['rdc:part'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:part] = part if has? 'rdc:part'

          hash
        end
      end
    end
  end
end