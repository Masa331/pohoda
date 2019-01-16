module Pohoda
  module Parsers
    module Inv
      class InvoiceRetentionType
        include ParserCore::BaseParser

        def date
          at 'inv:date'
        end

        def date_attributes
          attributes_at 'inv:date'
        end

        def date_due
          at 'inv:dateDue'
        end

        def date_due_attributes
          attributes_at 'inv:dateDue'
        end

        def home_currency
          at 'inv:homeCurrency'
        end

        def home_currency_attributes
          attributes_at 'inv:homeCurrency'
        end

        def liquidation
          submodel_at(Typ::LiquidationType, 'inv:liquidation')
        end

        def text
          at 'inv:text'
        end

        def text_attributes
          attributes_at 'inv:text'
        end

        def accounting
          submodel_at(Typ::RefType, 'inv:accounting')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date] = date if has? 'inv:date'
          hash[:date_attributes] = date_attributes if has? 'inv:date'
          hash[:date_due] = date_due if has? 'inv:dateDue'
          hash[:date_due_attributes] = date_due_attributes if has? 'inv:dateDue'
          hash[:home_currency] = home_currency if has? 'inv:homeCurrency'
          hash[:home_currency_attributes] = home_currency_attributes if has? 'inv:homeCurrency'
          hash[:liquidation] = liquidation.to_h if has? 'inv:liquidation'
          hash[:text] = text if has? 'inv:text'
          hash[:text_attributes] = text_attributes if has? 'inv:text'
          hash[:accounting] = accounting.to_h if has? 'inv:accounting'

          hash
        end
      end
    end
  end
end