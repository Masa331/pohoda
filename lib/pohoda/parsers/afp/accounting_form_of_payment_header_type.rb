module Pohoda
  module Parsers
    module Afp
      class AccountingFormOfPaymentHeaderType
        include ParserCore::BaseParser

        def id
          at 'afp:id'
        end

        def id_attributes
          attributes_at 'afp:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'afp:extId')
        end

        def centre
          submodel_at(Typ::RefType, 'afp:centre')
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'afp:paymentType')
        end

        def accounting_destination
          at 'afp:accountingDestination'
        end

        def accounting_destination_attributes
          attributes_at 'afp:accountingDestination'
        end

        def account
          submodel_at(Typ::AccountType, 'afp:account')
        end

        def set_the_account_independently
          at 'afp:setTheAccountIndependently'
        end

        def set_the_account_independently_attributes
          attributes_at 'afp:setTheAccountIndependently'
        end

        def debit
          at 'afp:debit'
        end

        def debit_attributes
          attributes_at 'afp:debit'
        end

        def credit
          at 'afp:credit'
        end

        def credit_attributes
          attributes_at 'afp:credit'
        end

        def accounting
          submodel_at(Typ::RefType, 'afp:accounting')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'afp:id'
          hash[:id_attributes] = id_attributes if has? 'afp:id'
          hash[:ext_id] = ext_id.to_h if has? 'afp:extId'
          hash[:centre] = centre.to_h if has? 'afp:centre'
          hash[:payment_type] = payment_type.to_h if has? 'afp:paymentType'
          hash[:accounting_destination] = accounting_destination if has? 'afp:accountingDestination'
          hash[:accounting_destination_attributes] = accounting_destination_attributes if has? 'afp:accountingDestination'
          hash[:account] = account.to_h if has? 'afp:account'
          hash[:set_the_account_independently] = set_the_account_independently if has? 'afp:setTheAccountIndependently'
          hash[:set_the_account_independently_attributes] = set_the_account_independently_attributes if has? 'afp:setTheAccountIndependently'
          hash[:debit] = debit if has? 'afp:debit'
          hash[:debit_attributes] = debit_attributes if has? 'afp:debit'
          hash[:credit] = credit if has? 'afp:credit'
          hash[:credit_attributes] = credit_attributes if has? 'afp:credit'
          hash[:accounting] = accounting.to_h if has? 'afp:accounting'

          hash
        end
      end
    end
  end
end