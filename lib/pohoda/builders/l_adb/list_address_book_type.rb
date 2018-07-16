module Pohoda
  module Builders
    module LAdb
      class ListAddressBookType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :addressbook
            data[:addressbook].each { |i| root << Adb::AddressbookType.new('lAdb:addressbook', i).builder }
          end

          root
        end
      end
    end
  end
end