module Pohoda
  module Builders
    module Adb
      class AddressbookType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('adb:actionType', data[:action_type]) if data.key? :action_type
          if data.key? :addressbook_header
            root << Adb::AddressbookHeaderType.new('addressbookHeader', data[:addressbook_header]).builder
          end
          if data.key? :addressbook_account
            root << Adb::AddressbookAccountType.new('addressbookAccount', data[:addressbook_account]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end