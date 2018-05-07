module Pohoda
  module Builders
    module Typ
      class LiquidationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:date', data[:date]) if data.key? :date
          root << build_element('typ:amountHome', data[:amount_home]) if data.key? :amount_home
          root << build_element('typ:amountForeign', data[:amount_foreign]) if data.key? :amount_foreign

          root
        end
      end
    end
  end
end