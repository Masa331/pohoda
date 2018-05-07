module Pohoda
  module Builders
    module Pay
      class PaymentHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pay:id', data[:id]) if data.key? :id
          root << build_element('pay:name', data[:name]) if data.key? :name
          root << build_element('pay:text', data[:text]) if data.key? :text
          root << build_element('pay:paymentType', data[:payment_type]) if data.key? :payment_type
          root << build_element('pay:paymentTypeFM', data[:payment_type_fm]) if data.key? :payment_type_fm
          if data.key? :foreign_currency
            root << Pay::ForeignCurrencyType.new('foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :ticket
            root << Pay::TicketType.new('ticket', data[:ticket]).builder
          end
          if data.key? :cash
            root << Pay::CashDefaultType.new('cash', data[:cash]).builder
          end
          root << build_element('pay:useInSales', data[:use_in_sales]) if data.key? :use_in_sales
          root << build_element('pay:useInOtherAgendas', data[:use_in_other_agendas]) if data.key? :use_in_other_agendas
          root << build_element('pay:eet', data[:eet]) if data.key? :eet
          root << build_element('pay:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end