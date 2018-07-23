module Pohoda
  module Builders
    module Bal
      class BalanceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bal:dateTo', data[:date_to], data[:date_to_attributes]) if data.key? :date_to

          root
        end
      end
    end
  end
end