module Pohoda
  module Builders
    module Typ
      class LiquidationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('typ:amountHome', data[:amount_home], data[:amount_home_attributes]) if data.key? :amount_home
          root << build_element('typ:amountForeign', data[:amount_foreign], data[:amount_foreign_attributes]) if data.key? :amount_foreign

          root
        end
      end
    end
  end
end