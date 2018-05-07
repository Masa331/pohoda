module Pohoda
  module Parsers
    module Typ
      class AccountType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def account_no
          at 'typ:accountNo'
        end

        def bank_code
          at 'typ:bankCode'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:account_no] = account_no if has? 'typ:accountNo'
          hash[:bank_code] = bank_code if has? 'typ:bankCode'

          hash
        end
      end
    end
  end
end