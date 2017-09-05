module Pohoda
  class TypeRound
    include BaseElement

    def price_round
      t 'typ:priceRound'
    end

    def to_h
      { price_round: price_round }
    end
  end
end
