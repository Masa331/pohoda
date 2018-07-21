module Pohoda
  module Parsers
    module Ftr
      class SelectedNumbersType
        include ParserCore::BaseParser

        def number
          array_of_at(Typ::NumberType, ['ftr:number'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:number] = number.map(&:to_h) if has? 'ftr:number'

          hash
        end
      end
    end
  end
end