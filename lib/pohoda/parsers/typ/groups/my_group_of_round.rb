module Pohoda
  module Parsers
    module Typ
      module Groups
        module MyGroupOfRound
          def rate_va_tround
            at 'typ:rateVATround'
          end

          def price_round_sum
            at 'typ:priceRoundSum'
          end

          def price_round_sum_vat
            at 'typ:priceRoundSumVAT'
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:rate_va_tround] = rate_va_tround if has? 'typ:rateVATround'
            hash[:price_round_sum] = price_round_sum if has? 'typ:priceRoundSum'
            hash[:price_round_sum_vat] = price_round_sum_vat if has? 'typ:priceRoundSumVAT'

            hash
          end
        end
      end
    end
  end
end