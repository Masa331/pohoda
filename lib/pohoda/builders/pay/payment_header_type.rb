module Pohoda
  module Builders
    module Pay
      class PaymentHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pay:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('pay:extId', data[:ext_id]).builder
          end
          root << build_element('pay:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('pay:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('pay:paymentType', data[:payment_type], data[:payment_type_attributes]) if data.key? :payment_type
          root << build_element('pay:paymentTypeFM', data[:payment_type_fm], data[:payment_type_fm_attributes]) if data.key? :payment_type_fm
          root << build_element('pay:foreignCurrency', data[:foreign_currency], data[:foreign_currency_attributes]) if data.key? :foreign_currency
          if data.key? :ticket
            root << Pay::TicketType.new('pay:ticket', data[:ticket]).builder
          end
          if data.key? :cash
            root << Pay::CashDefaultType.new('pay:cash', data[:cash]).builder
          end
          root << build_element('pay:useInSales', data[:use_in_sales], data[:use_in_sales_attributes]) if data.key? :use_in_sales
          root << build_element('pay:useInOtherAgendas', data[:use_in_other_agendas], data[:use_in_other_agendas_attributes]) if data.key? :use_in_other_agendas
          root << build_element('pay:eet', data[:eet], data[:eet_attributes]) if data.key? :eet
          root << build_element('pay:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end