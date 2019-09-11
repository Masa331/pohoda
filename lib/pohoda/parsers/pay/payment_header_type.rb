module Pohoda
  module Parsers
    module Pay
      class PaymentHeaderType
        include ParserCore::BaseParser

        def id
          at 'pay:id'
        end

        def id_attributes
          attributes_at 'pay:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'pay:extId')
        end

        def name
          at 'pay:name'
        end

        def name_attributes
          attributes_at 'pay:name'
        end

        def text
          at 'pay:text'
        end

        def text_attributes
          attributes_at 'pay:text'
        end

        def payment_type
          at 'pay:paymentType'
        end

        def payment_type_attributes
          attributes_at 'pay:paymentType'
        end

        def payment_type_fm
          at 'pay:paymentTypeFM'
        end

        def payment_type_fm_attributes
          attributes_at 'pay:paymentTypeFM'
        end

        def foreign_currency
          at 'pay:foreignCurrency'
        end

        def foreign_currency_attributes
          attributes_at 'pay:foreignCurrency'
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

        def use_in_sales_attributes
          attributes_at 'pay:useInSales'
        end

        def use_in_other_agendas
          at 'pay:useInOtherAgendas'
        end

        def use_in_other_agendas_attributes
          attributes_at 'pay:useInOtherAgendas'
        end

        def eet
          at 'pay:eet'
        end

        def eet_attributes
          attributes_at 'pay:eet'
        end

        def note
          at 'pay:note'
        end

        def note_attributes
          attributes_at 'pay:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'pay:id'
          hash[:id_attributes] = id_attributes if has? 'pay:id'
          hash[:ext_id] = ext_id.to_h if has? 'pay:extId'
          hash[:name] = name if has? 'pay:name'
          hash[:name_attributes] = name_attributes if has? 'pay:name'
          hash[:text] = text if has? 'pay:text'
          hash[:text_attributes] = text_attributes if has? 'pay:text'
          hash[:payment_type] = payment_type if has? 'pay:paymentType'
          hash[:payment_type_attributes] = payment_type_attributes if has? 'pay:paymentType'
          hash[:payment_type_fm] = payment_type_fm if has? 'pay:paymentTypeFM'
          hash[:payment_type_fm_attributes] = payment_type_fm_attributes if has? 'pay:paymentTypeFM'
          hash[:foreign_currency] = foreign_currency if has? 'pay:foreignCurrency'
          hash[:foreign_currency_attributes] = foreign_currency_attributes if has? 'pay:foreignCurrency'
          hash[:ticket] = ticket.to_h if has? 'pay:ticket'
          hash[:cash] = cash.to_h if has? 'pay:cash'
          hash[:use_in_sales] = use_in_sales if has? 'pay:useInSales'
          hash[:use_in_sales_attributes] = use_in_sales_attributes if has? 'pay:useInSales'
          hash[:use_in_other_agendas] = use_in_other_agendas if has? 'pay:useInOtherAgendas'
          hash[:use_in_other_agendas_attributes] = use_in_other_agendas_attributes if has? 'pay:useInOtherAgendas'
          hash[:eet] = eet if has? 'pay:eet'
          hash[:eet_attributes] = eet_attributes if has? 'pay:eet'
          hash[:note] = note if has? 'pay:note'
          hash[:note_attributes] = note_attributes if has? 'pay:note'

          hash
        end
      end
    end
  end
end