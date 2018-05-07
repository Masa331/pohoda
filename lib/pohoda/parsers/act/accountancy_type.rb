module Pohoda
  module Parsers
    module Act
      class AccountancyType
        include ParserCore::BaseParser

        def accounting_item
          array_of_at(Act::AccountingItemType, ['act:accountingItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:accounting_item] = accounting_item.map(&:to_h_with_attrs) if has? 'act:accountingItem'

          hash
        end
      end
    end
  end
end