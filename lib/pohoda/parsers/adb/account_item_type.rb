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

        def id_attributes
          attributes_at 'adb:id'
        end

        def account_number
          at 'adb:accountNumber'
        end

        def account_number_attributes
          attributes_at 'adb:accountNumber'
        end

        def sym_spec
          at 'adb:symSpec'
        end

        def sym_spec_attributes
          attributes_at 'adb:symSpec'
        end

        def bank_code
          at 'adb:bankCode'
        end

        def bank_code_attributes
          attributes_at 'adb:bankCode'
        end

        def default_account
          at 'adb:defaultAccount'
        end

        def default_account_attributes
          attributes_at 'adb:defaultAccount'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'adb:actionType'
          hash[:id] = id if has? 'adb:id'
          hash[:id_attributes] = id_attributes if has? 'adb:id'
          hash[:account_number] = account_number if has? 'adb:accountNumber'
          hash[:account_number_attributes] = account_number_attributes if has? 'adb:accountNumber'
          hash[:sym_spec] = sym_spec if has? 'adb:symSpec'
          hash[:sym_spec_attributes] = sym_spec_attributes if has? 'adb:symSpec'
          hash[:bank_code] = bank_code if has? 'adb:bankCode'
          hash[:bank_code_attributes] = bank_code_attributes if has? 'adb:bankCode'
          hash[:default_account] = default_account if has? 'adb:defaultAccount'
          hash[:default_account_attributes] = default_account_attributes if has? 'adb:defaultAccount'

          hash
        end
      end
    end
  end
end