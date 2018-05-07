module Pohoda
  module Builders
    module Adb
      class AccountItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('actionType', data[:action_type]).builder
          end
          root << build_element('adb:id', data[:id]) if data.key? :id
          root << build_element('adb:accountNumber', data[:account_number]) if data.key? :account_number
          root << build_element('adb:symSpec', data[:sym_spec]) if data.key? :sym_spec
          root << build_element('adb:bankCode', data[:bank_code]) if data.key? :bank_code
          root << build_element('adb:defaultAccount', data[:default_account]) if data.key? :default_account

          root
        end
      end
    end
  end
end