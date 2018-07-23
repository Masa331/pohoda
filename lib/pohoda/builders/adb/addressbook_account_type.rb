module Pohoda
  module Builders
    module Adb
      class AddressbookAccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :account_item
            data[:account_item].each { |i| root << Adb::AccountItemType.new('adb:accountItem', i).builder }
          end

          root
        end
      end
    end
  end
end