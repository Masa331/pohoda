module Pohoda
  module Parsers
    module LAdb
      class ListAddressBookType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def addressbook
          array_of_at(Adb::AddressbookType, ['lAdb:addressbook'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:addressbook] = addressbook.map(&:to_h_with_attrs) if has? 'lAdb:addressbook'

          hash
          super.merge(hash)
        end
      end
    end
  end
end