module Pohoda
  module Parsers
    module LAdb
      class ListAddressBookType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def addressbook
          array_of_at(Adb::AddressbookType, ['lAdb:addressbook'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:addressbook] = addressbook.map(&:to_h) if has? 'lAdb:addressbook'

          hash
          super.merge(hash)
        end
      end
    end
  end
end