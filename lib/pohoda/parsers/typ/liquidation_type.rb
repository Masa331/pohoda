module Pohoda
  module Parsers
    module Typ
      class LiquidationType
        include ParserCore::BaseParser

        def date
          at 'typ:date'
        end

        def date_attributes
          attributes_at 'typ:date'
        end

        def amount_home
          at 'typ:amountHome'
        end

        def amount_home_attributes
          attributes_at 'typ:amountHome'
        end

        def amount_foreign
          at 'typ:amountForeign'
        end

        def amount_foreign_attributes
          attributes_at 'typ:amountForeign'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date] = date if has? 'typ:date'
          hash[:date_attributes] = date_attributes if has? 'typ:date'
          hash[:amount_home] = amount_home if has? 'typ:amountHome'
          hash[:amount_home_attributes] = amount_home_attributes if has? 'typ:amountHome'
          hash[:amount_foreign] = amount_foreign if has? 'typ:amountForeign'
          hash[:amount_foreign_attributes] = amount_foreign_attributes if has? 'typ:amountForeign'

          hash
        end
      end
    end
  end
end