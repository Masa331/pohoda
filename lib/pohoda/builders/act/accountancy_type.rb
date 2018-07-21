module Pohoda
  module Builders
    module Act
      class AccountancyType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :accounting_item
            data[:accounting_item].each { |i| root << Act::AccountingItemType.new('act:accountingItem', i).builder }
          end

          root
        end
      end
    end
  end
end