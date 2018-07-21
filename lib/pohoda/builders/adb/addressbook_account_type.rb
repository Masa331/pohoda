module Pohoda
  module Builders
    module Adb
      class AddressbookAccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :account_item
            data[:account_item].each { |i| root << Adb::AccountItemType.new('adb:accountItem', i).builder }
          end

          root
        end
      end
    end
  end
end