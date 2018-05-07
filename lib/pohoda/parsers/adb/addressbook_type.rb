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
          array_of_at(Adb::AccountItemType, ['adb:addressbookAccount', 'adb:accountItem'])
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['adb:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type if has? 'adb:actionType'
          hash[:addressbook_header] = addressbook_header.to_h_with_attrs if has? 'adb:addressbookHeader'
          hash[:addressbook_account] = addressbook_account.map(&:to_h_with_attrs) if has? 'adb:addressbookAccount'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'adb:print'

          hash
        end
      end
    end
  end
end