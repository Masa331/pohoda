module Pohoda
  class TypeRound
    include BaseElement

    def price_round
      text_at 'priceRound'
    end

    def rate_vat_round
      text_at 'rateVATround'
    end

    def price_round_sum
      text_at 'priceRoundSum'
    end

    def price_round_sum_vat
      text_at 'priceRoundSumVAT'
    end

    def to_h
      { price_round: price_round,
        rate_vat_round: rate_vat_round,
        price_round_sum: price_round_sum,
        price_round_sum_vat: price_round_sum_vat }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
