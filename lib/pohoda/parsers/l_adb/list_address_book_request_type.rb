module Pohoda
  module Parsers
    module LAdb
      class ListAddressBookRequestType
        include ParserCore::BaseParser

        def request_address_book
          submodel_at(Ftr::RequestAddressBookType, 'lAdb:requestAddressBook')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_address_book] = request_address_book.to_h if has? 'lAdb:requestAddressBook'

          hash
        end
      end
    end
  end
end