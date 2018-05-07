module Pohoda
  module Parsers
    module Bnk
      class BankHeaderType
        include ParserCore::BaseParser

        def id
          at 'bnk:id'
        end

        def bank_type
          at 'bnk:bankType'
        end

        def account
          submodel_at(Typ::RefType, 'bnk:account')
        end

        def number
          at 'bnk:number'
        end

        def statement_number
          submodel_at(Bnk::StatementNumberType, 'bnk:statementNumber')
        end

        def sym_var
          at 'bnk:symVar'
        end

        def date_statement
          at 'bnk:dateStatement'
        end

        def date_payment
          at 'bnk:datePayment'
        end

        def accounting
          submodel_at(Typ::AccountingType, 'bnk:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'bnk:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'bnk:classificationKVDPH')
        end

        def text
          at 'bnk:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'bnk:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'bnk:myIdentity')
        end

        def payment_account
          submodel_at(Bnk::PaymentAccount2, 'bnk:paymentAccount')
        end

        def sym_const
          at 'bnk:symConst'
        end

        def sym_spec
          at 'bnk:symSpec'
        end

        def sym_par
          at 'bnk:symPar'
        end

        def centre
          submodel_at(Typ::RefType, 'bnk:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'bnk:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'bnk:contract')
        end

        def note
          at 'bnk:note'
        end

        def int_note
          at 'bnk:intNote'
        end

        def labels
          submodel_at(Typ::LabelsType, 'bnk:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'bnk:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'bnk:id'
          hash[:bank_type] = bank_type if has? 'bnk:bankType'
          hash[:account] = account.to_h_with_attrs if has? 'bnk:account'
          hash[:number] = number if has? 'bnk:number'
          hash[:statement_number] = statement_number.to_h_with_attrs if has? 'bnk:statementNumber'
          hash[:sym_var] = sym_var if has? 'bnk:symVar'
          hash[:date_statement] = date_statement if has? 'bnk:dateStatement'
          hash[:date_payment] = date_payment if has? 'bnk:datePayment'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'bnk:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'bnk:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'bnk:classificationKVDPH'
          hash[:text] = text if has? 'bnk:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'bnk:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'bnk:myIdentity'
          hash[:payment_account] = payment_account.to_h_with_attrs if has? 'bnk:paymentAccount'
          hash[:sym_const] = sym_const if has? 'bnk:symConst'
          hash[:sym_spec] = sym_spec if has? 'bnk:symSpec'
          hash[:sym_par] = sym_par if has? 'bnk:symPar'
          hash[:centre] = centre.to_h_with_attrs if has? 'bnk:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'bnk:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'bnk:contract'
          hash[:note] = note if has? 'bnk:note'
          hash[:int_note] = int_note if has? 'bnk:intNote'
          hash[:labels] = labels.to_h_with_attrs if has? 'bnk:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'bnk:parameters'

          hash
        end
      end
    end
  end
end