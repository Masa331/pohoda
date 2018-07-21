module Pohoda
  module Parsers
    module Sto
      class PLUtype
        include ParserCore::BaseParser

        def use_plu
          at 'sto:usePLU'
        end

        def use_plu_attributes
          attributes_at 'sto:usePLU'
        end

        def lower_limit
          at 'sto:lowerLimit'
        end

        def lower_limit_attributes
          attributes_at 'sto:lowerLimit'
        end

        def upper_limit
          at 'sto:upperLimit'
        end

        def upper_limit_attributes
          attributes_at 'sto:upperLimit'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:use_plu] = use_plu if has? 'sto:usePLU'
          hash[:use_plu_attributes] = use_plu_attributes if has? 'sto:usePLU'
          hash[:lower_limit] = lower_limit if has? 'sto:lowerLimit'
          hash[:lower_limit_attributes] = lower_limit_attributes if has? 'sto:lowerLimit'
          hash[:upper_limit] = upper_limit if has? 'sto:upperLimit'
          hash[:upper_limit_attributes] = upper_limit_attributes if has? 'sto:upperLimit'

          hash
        end
      end
    end
  end
end