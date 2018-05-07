module Pohoda
  module Parsers
    module Lst
      class ListBankAccountType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def bank_account
          array_of_at(Bka::BankAccountType, ['lst:bankAccount'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:bank_account] = bank_account.map(&:to_h_with_attrs) if has? 'lst:bankAccount'

          hash
          super.merge(hash)
        end
      end
    end
  end
end