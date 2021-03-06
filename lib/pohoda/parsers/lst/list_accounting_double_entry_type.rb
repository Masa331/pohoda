module Pohoda
  module Parsers
    module Lst
      class ListAccountingDoubleEntryType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_accounting
          array_of_at(Lst::ItemAccountingTypeDoubleEntry, ['lst:itemAccounting'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_accounting] = item_accounting.map(&:to_h) if has? 'lst:itemAccounting'

          hash
          super.merge(hash)
        end
      end
    end
  end
end