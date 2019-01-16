module Pohoda
  module Builders
    module Inv
      class InvoiceRetentionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('inv:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('inv:dateDue', data[:date_due], data[:date_due_attributes]) if data.key? :date_due
          root << build_element('inv:homeCurrency', data[:home_currency], data[:home_currency_attributes]) if data.key? :home_currency
          if data.key? :liquidation
            root << Typ::LiquidationType.new('inv:liquidation', data[:liquidation]).builder
          end
          root << build_element('inv:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :accounting
            root << Typ::RefType.new('inv:accounting', data[:accounting]).builder
          end

          root
        end
      end
    end
  end
end