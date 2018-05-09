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
            root << Adb::AddressbookHeaderType.new('adb:addressbookHeader', data[:addressbook_header]).builder
          end
          if data.key? :addressbook_account
            element = Ox::Element.new('adb:addressbookAccount')
            data[:addressbook_account].each { |i| element << Adb::AccountItemType.new('adb:accountItem', i).builder }
            root << element
          end
          if data.key? :print
            element = Ox::Element.new('adb:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end