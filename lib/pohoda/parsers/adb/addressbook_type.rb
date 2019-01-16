module Pohoda
  module Parsers
    module Adb
      class AddressbookType
        include ParserCore::BaseParser

        def action_type
          at 'adb:actionType'
        end

        def action_type_attributes
          attributes_at 'adb:actionType'
        end

        def addressbook_header
          submodel_at(Adb::AddressbookHeaderType, 'adb:addressbookHeader')
        end

        def addressbook_account
          array_of_at(Adb::AccountItemType, ['adb:addressbookAccount', 'adb:accountItem'])
        end

        def addressbook_gdpr
          submodel_at(Adb::AddressbookGDPRType, 'adb:addressbookGDPR')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['adb:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type if has? 'adb:actionType'
          hash[:action_type_attributes] = action_type_attributes if has? 'adb:actionType'
          hash[:addressbook_header] = addressbook_header.to_h if has? 'adb:addressbookHeader'
          hash[:addressbook_account] = addressbook_account.map(&:to_h) if has? 'adb:addressbookAccount'
          hash[:addressbook_gdpr] = addressbook_gdpr.to_h if has? 'adb:addressbookGDPR'
          hash[:print] = print.map(&:to_h) if has? 'adb:print'

          hash
        end
      end
    end
  end
end