module Pohoda
  module Parsers
    module LAdb
      class ListAddressBookRequestType
        include ParserCore::BaseParser

        def request_address_book
          submodel_at(Ftr::RequestAddressBookType, 'lAdb:requestAddressBook')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_address_book] = request_address_book.to_h_with_attrs if has? 'lAdb:requestAddressBook'

          hash
        end
      end
    end
  end
end