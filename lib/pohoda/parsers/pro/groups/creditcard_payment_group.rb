module Pohoda
  module Parsers
    module Pro
      module Groups
        module CreditcardPaymentGroup
          def payment_terminal
            at 'pro:paymentTerminal'
          end

          def payment_terminal_attributes
            attributes_at 'pro:paymentTerminal'
          end

          def sym_var
            at 'pro:symVar'
          end

          def sym_var_attributes
            attributes_at 'pro:symVar'
          end

          def account
            submodel_at(Typ::AccountType, 'pro:account')
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:payment_terminal] = payment_terminal if has? 'pro:paymentTerminal'
            hash[:payment_terminal_attributes] = payment_terminal_attributes if has? 'pro:paymentTerminal'
            hash[:sym_var] = sym_var if has? 'pro:symVar'
            hash[:sym_var_attributes] = sym_var_attributes if has? 'pro:symVar'
            hash[:account] = account.to_h if has? 'pro:account'

            hash
          end
        end
      end
    end
  end
end