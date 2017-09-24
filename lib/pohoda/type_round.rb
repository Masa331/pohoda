module Pohoda
  class TypeRound
    include BaseElement

    def price_round
      t 'typ:priceRound'
    end

    def rate_vat_round
      t 'typ:rateVATround'
    end

    def price_round_sum
      t 'typ:priceRoundSum'
    end

    def price_round_sum_vat
      t 'typ:priceRoundSumVAT'
    end

    def to_h
      { price_round: price_round,
        rate_vat_round: rate_vat_round,
        price_round_sum: price_round_sum,
        price_round_sum_vat: price_round_sum_vat
      }
    end
  end
end
