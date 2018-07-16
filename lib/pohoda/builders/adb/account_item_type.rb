module Pohoda
  module Builders
    module Adb
      class AccountItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('adb:actionType', data[:action_type]).builder
          end
          root << build_element('adb:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('adb:accountNumber', data[:account_number], data[:account_number_attributes]) if data.key? :account_number
          root << build_element('adb:symSpec', data[:sym_spec], data[:sym_spec_attributes]) if data.key? :sym_spec
          root << build_element('adb:bankCode', data[:bank_code], data[:bank_code_attributes]) if data.key? :bank_code
          root << build_element('adb:defaultAccount', data[:default_account], data[:default_account_attributes]) if data.key? :default_account

          root
        end
      end
    end
  end
end