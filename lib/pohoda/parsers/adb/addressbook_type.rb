module Pohoda
  module Parsers
    module Adb
      class AddressbookType
        include ParserCore::BaseParser

        def action_type
          at 'adb:actionType'
        end

        def addressbook_header
          submodel_at(Adb::AddressbookHeaderType, 'adb:addressbookHeader')
        end

        def addressbook_account
          submodel_at(Adb::AddressbookAccountType, 'adb:addressbookAccount')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'adb:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type if has? 'adb:actionType'
          hash[:addressbook_header] = addressbook_header.to_h_with_attrs if has? 'adb:addressbookHeader'
          hash[:addressbook_account] = addressbook_account.to_h_with_attrs if has? 'adb:addressbookAccount'
          hash[:print] = print.to_h_with_attrs if has? 'adb:print'

          hash
        end
      end
    end
  end
end