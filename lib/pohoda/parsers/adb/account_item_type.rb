module Pohoda
  module Parsers
    module Adb
      class AccountItemType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'adb:actionType')
        end

        def id
          at 'adb:id'
        end

        def account_number
          at 'adb:accountNumber'
        end

        def sym_spec
          at 'adb:symSpec'
        end

        def bank_code
          at 'adb:bankCode'
        end

        def default_account
          at 'adb:defaultAccount'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'adb:actionType'
          hash[:id] = id if has? 'adb:id'
          hash[:account_number] = account_number if has? 'adb:accountNumber'
          hash[:sym_spec] = sym_spec if has? 'adb:symSpec'
          hash[:bank_code] = bank_code if has? 'adb:bankCode'
          hash[:default_account] = default_account if has? 'adb:defaultAccount'

          hash
        end
      end
    end
  end
end