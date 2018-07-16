module Pohoda
  module Builders
    module Bka
      class BankAccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bka:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          if data.key? :bank_account_header
            root << Bka::BankAccountHeaderType.new('bka:bankAccountHeader', data[:bank_account_header]).builder
          end

          root
        end
      end
    end
  end
end