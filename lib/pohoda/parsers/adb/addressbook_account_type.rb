module Pohoda
  module Parsers
    module Adb
      class AddressbookAccountType
        include ParserCore::BaseParser

        def account_item
          array_of_at(Adb::AccountItemType, ['adb:accountItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:account_item] = account_item.map(&:to_h_with_attrs) if has? 'adb:accountItem'

          hash
        end
      end
    end
  end
end