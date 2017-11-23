module Pohoda
  class TypeRound
    include BaseElement

    def price_round
      at :'typ:priceRound'
    end

    def rate_vat_round
      at :'typ:rateVATround'
    end

    def price_round_sum
      at :'typ:priceRoundSum'
    end

    def price_round_sum_vat
      at :'typ:priceRoundSumVAT'
    end

    def to_h
      { price_round: price_round,
        rate_vat_round: rate_vat_round,
        price_round_sum: price_round_sum,
        price_round_sum_vat: price_round_sum_vat }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
