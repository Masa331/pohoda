module Pohoda
  module Parsers
    module Sto
      class PLUtype
        include ParserCore::BaseParser

        def use_plu
          at 'sto:usePLU'
        end

        def lower_limit
          at 'sto:lowerLimit'
        end

        def upper_limit
          at 'sto:upperLimit'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:use_plu] = use_plu if has? 'sto:usePLU'
          hash[:lower_limit] = lower_limit if has? 'sto:lowerLimit'
          hash[:upper_limit] = upper_limit if has? 'sto:upperLimit'

          hash
        end
      end
    end
  end
end