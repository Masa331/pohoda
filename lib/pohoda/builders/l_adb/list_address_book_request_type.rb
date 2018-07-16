module Pohoda
  module Builders
    module LAdb
      class ListAddressBookRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_address_book
            root << Ftr::RequestAddressBookType.new('lAdb:requestAddressBook', data[:request_address_book]).builder
          end

          root
        end
      end
    end
  end
end