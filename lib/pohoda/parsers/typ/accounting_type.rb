module Pohoda
  module Parsers
    module Typ
      class AccountingType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def accounting_type
          at 'typ:accountingType'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:accounting_type] = accounting_type if has? 'typ:accountingType'

          hash
        end
      end
    end
  end
end