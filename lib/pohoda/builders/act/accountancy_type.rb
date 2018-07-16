module Pohoda
  module Builders
    module Act
      class AccountancyType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :accounting_item
            data[:accounting_item].each { |i| root << Act::AccountingItemType.new('act:accountingItem', i).builder }
          end

          root
        end
      end
    end
  end
end