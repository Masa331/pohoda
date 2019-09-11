module Pohoda
  module Builders
    module Pro
      module Groups
        module CreditcardPaymentGroup
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            root << build_element('pro:paymentTerminal', data[:payment_terminal], data[:payment_terminal_attributes]) if data.key? :payment_terminal
            root << build_element('pro:symVar', data[:sym_var], data[:sym_var_attributes]) if data.key? :sym_var
            if data.key? :account
              root << Typ::AccountType.new('pro:account', data[:account]).builder
            end

            root
          end
        end
      end
    end
  end
end