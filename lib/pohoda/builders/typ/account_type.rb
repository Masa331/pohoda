module Pohoda
  module Builders
    module Typ
      class AccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('typ:accountNo', data[:account_no], data[:account_no_attributes]) if data.key? :account_no
          root << build_element('typ:bankCode', data[:bank_code], data[:bank_code_attributes]) if data.key? :bank_code

          root
        end
      end
    end
  end
end