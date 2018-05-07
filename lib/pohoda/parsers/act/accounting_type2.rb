module Pohoda
  module Parsers
    module Act
      class AccountingType2
        include ParserCore::BaseParser

        def credit
          at 'act:credit'
        end

        def debit
          at 'act:debit'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:credit] = credit if has? 'act:credit'
          hash[:debit] = debit if has? 'act:debit'

          hash
        end
      end
    end
  end
end