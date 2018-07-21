module Pohoda
  module Parsers
    module Adb
      class AddressbookAccountType
        include ParserCore::BaseParser

        def account_item
          array_of_at(Adb::AccountItemType, ['adb:accountItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:account_item] = account_item.map(&:to_h) if has? 'adb:accountItem'

          hash
        end
      end
    end
  end
end