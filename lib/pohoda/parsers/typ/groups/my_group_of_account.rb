module Pohoda
  module Parsers
    module Typ
      module Groups
        module MyGroupOfAccount
          def account_no
            at 'typ:accountNo'
          end

          def account_no_attributes
            attributes_at 'typ:accountNo'
          end

          def bank_code
            at 'typ:bankCode'
          end

          def bank_code_attributes
            attributes_at 'typ:bankCode'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:account_no] = account_no if has? 'typ:accountNo'
            hash[:account_no_attributes] = account_no_attributes if has? 'typ:accountNo'
            hash[:bank_code] = bank_code if has? 'typ:bankCode'
            hash[:bank_code_attributes] = bank_code_attributes if has? 'typ:bankCode'

            hash
          end
        end
      end
    end
  end
end