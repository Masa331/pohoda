module Pohoda
  module Parsers
    module Typ
      class TypeRound
        include ParserCore::BaseParser
        include Typ::Groups::MyGroupOfRound

        def price_round
          at 'typ:priceRound'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:price_round] = price_round if has? 'typ:priceRound'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end