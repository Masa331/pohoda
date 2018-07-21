module Pohoda
  module Parsers
    module Act
      class AccountancyType
        include ParserCore::BaseParser

        def accounting_item
          array_of_at(Act::AccountingItemType, ['act:accountingItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:accounting_item] = accounting_item.map(&:to_h) if has? 'act:accountingItem'

          hash
        end
      end
    end
  end
end