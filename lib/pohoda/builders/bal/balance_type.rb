module Pohoda
  module Builders
    module Bal
      class BalanceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :balance_header
            root << Bal::BalanceHeaderType.new('bal:balanceHeader', data[:balance_header]).builder
          end
          if data.key? :balance_item
            data[:balance_item].each { |i| root << Bal::BalanceItemType.new('bal:balanceItem', i).builder }
          end

          root
        end
      end
    end
  end
end