module Pohoda
  module Builders
    module LAdb
      class ListAddressBookRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_address_book
            root << Ftr::RequestAddressBookType.new('lAdb:requestAddressBook', data[:request_address_book]).builder
          end

          root
        end
      end
    end
  end
end