module Pohoda
  module Parsers
    module Typ
      module Groups
        module MyGroupOfAccount
          def account_no
            at 'typ:accountNo'
          end

          def bank_code
            at 'typ:bankCode'
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:account_no] = account_no if has? 'typ:accountNo'
            hash[:bank_code] = bank_code if has? 'typ:bankCode'

            hash
          end
        end
      end
    end
  end
end