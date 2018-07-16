module Pohoda
  module Parsers
    module Typ
      module Groups
        module MyGroupOfRound
          def rate_va_tround
            at 'typ:rateVATround'
          end

          def rate_va_tround_attributes
            attributes_at 'typ:rateVATround'
          end

          def price_round_sum
            at 'typ:priceRoundSum'
          end

          def price_round_sum_attributes
            attributes_at 'typ:priceRoundSum'
          end

          def price_round_sum_vat
            at 'typ:priceRoundSumVAT'
          end

          def price_round_sum_vat_attributes
            attributes_at 'typ:priceRoundSumVAT'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:rate_va_tround] = rate_va_tround if has? 'typ:rateVATround'
            hash[:rate_va_tround_attributes] = rate_va_tround_attributes if has? 'typ:rateVATround'
            hash[:price_round_sum] = price_round_sum if has? 'typ:priceRoundSum'
            hash[:price_round_sum_attributes] = price_round_sum_attributes if has? 'typ:priceRoundSum'
            hash[:price_round_sum_vat] = price_round_sum_vat if has? 'typ:priceRoundSumVAT'
            hash[:price_round_sum_vat_attributes] = price_round_sum_vat_attributes if has? 'typ:priceRoundSumVAT'

            hash
          end
        end
      end
    end
  end
end