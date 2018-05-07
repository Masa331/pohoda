module Pohoda
  module Parsers
    module Lst
      class ListAccountingDoubleEntryType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_accounting
          array_of_at(Lst::ItemAccountingTypeDoubleEntry, ['lst:itemAccounting'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_accounting] = item_accounting.map(&:to_h_with_attrs) if has? 'lst:itemAccounting'

          hash
          super.merge(hash)
        end
      end
    end
  end
end