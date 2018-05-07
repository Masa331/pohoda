module Pohoda
  module Parsers
    module Pay
      class PaymentHeaderType
        include ParserCore::BaseParser

        def id
          at 'pay:id'
        end

        def name
          at 'pay:name'
        end

        def text
          at 'pay:text'
        end

        def payment_type
          at 'pay:paymentType'
        end

        def payment_type_fm
          at 'pay:paymentTypeFM'
        end

        def foreign_currency
          submodel_at(Pay::ForeignCurrencyType, 'pay:foreignCurrency')
        end

        def ticket
          submodel_at(Pay::TicketType, 'pay:ticket')
        end

        def cash
          submodel_at(Pay::CashDefaultType, 'pay:cash')
        end

        def use_in_sales
          at 'pay:useInSales'
        end

        def use_in_other_agendas
          at 'pay:useInOtherAgendas'
        end

        def eet
          at 'pay:eet'
        end

        def note
          at 'pay:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'pay:id'
          hash[:name] = name if has? 'pay:name'
          hash[:text] = text if has? 'pay:text'
          hash[:payment_type] = payment_type if has? 'pay:paymentType'
          hash[:payment_type_fm] = payment_type_fm if has? 'pay:paymentTypeFM'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'pay:foreignCurrency'
          hash[:ticket] = ticket.to_h_with_attrs if has? 'pay:ticket'
          hash[:cash] = cash.to_h_with_attrs if has? 'pay:cash'
          hash[:use_in_sales] = use_in_sales if has? 'pay:useInSales'
          hash[:use_in_other_agendas] = use_in_other_agendas if has? 'pay:useInOtherAgendas'
          hash[:eet] = eet if has? 'pay:eet'
          hash[:note] = note if has? 'pay:note'

          hash
        end
      end
    end
  end
end