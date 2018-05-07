module Pohoda
  module Parsers
    module Ftr
      class SelectedNumbersType
        include ParserCore::BaseParser

        def number
          array_of_at(Typ::NumberType, ['ftr:number'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:number] = number.map(&:to_h_with_attrs) if has? 'ftr:number'

          hash
        end
      end
    end
  end
end