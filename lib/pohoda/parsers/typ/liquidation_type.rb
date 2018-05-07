module Pohoda
  module Parsers
    module Typ
      class LiquidationType
        include ParserCore::BaseParser

        def date
          at 'typ:date'
        end

        def amount_home
          at 'typ:amountHome'
        end

        def amount_foreign
          at 'typ:amountForeign'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date] = date if has? 'typ:date'
          hash[:amount_home] = amount_home if has? 'typ:amountHome'
          hash[:amount_foreign] = amount_foreign if has? 'typ:amountForeign'

          hash
        end
      end
    end
  end
end