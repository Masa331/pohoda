module Pohoda
  module Parsers
    module Bka
      class BankAccountType
        include ParserCore::BaseParser

        def action_type
          at 'bka:actionType'
        end

        def bank_account_header
          submodel_at(Bka::BankAccountHeaderType, 'bka:bankAccountHeader')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type if has? 'bka:actionType'
          hash[:bank_account_header] = bank_account_header.to_h_with_attrs if has? 'bka:bankAccountHeader'

          hash
        end
      end
    end
  end
end