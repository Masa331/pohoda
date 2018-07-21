module Pohoda
  module Parsers
    module Act
      class AccountingType2
        include ParserCore::BaseParser

        def credit
          at 'act:credit'
        end

        def credit_attributes
          attributes_at 'act:credit'
        end

        def debit
          at 'act:debit'
        end

        def debit_attributes
          attributes_at 'act:debit'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:credit] = credit if has? 'act:credit'
          hash[:credit_attributes] = credit_attributes if has? 'act:credit'
          hash[:debit] = debit if has? 'act:debit'
          hash[:debit_attributes] = debit_attributes if has? 'act:debit'

          hash
        end
      end
    end
  end
end