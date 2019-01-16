module Pohoda
  module Parsers
    module Bnk
      class BankHeaderType
        include ParserCore::BaseParser

        def id
          at 'bnk:id'
        end

        def id_attributes
          attributes_at 'bnk:id'
        end

        def bank_type
          at 'bnk:bankType'
        end

        def bank_type_attributes
          attributes_at 'bnk:bankType'
        end

        def account
          submodel_at(Typ::RefType, 'bnk:account')
        end

        def number
          at 'bnk:number'
        end

        def number_attributes
          attributes_at 'bnk:number'
        end

        def statement_number
          submodel_at(Bnk::StatementNumberType, 'bnk:statementNumber')
        end

        def sym_var
          at 'bnk:symVar'
        end

        def sym_var_attributes
          attributes_at 'bnk:symVar'
        end

        def date_statement
          at 'bnk:dateStatement'
        end

        def date_statement_attributes
          attributes_at 'bnk:dateStatement'
        end

        def date_payment
          at 'bnk:datePayment'
        end

        def date_payment_attributes
          attributes_at 'bnk:datePayment'
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

        def text_attributes
          attributes_at 'bnk:text'
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

        def sym_const_attributes
          attributes_at 'bnk:symConst'
        end

        def sym_spec
          at 'bnk:symSpec'
        end

        def sym_spec_attributes
          attributes_at 'bnk:symSpec'
        end

        def sym_par
          at 'bnk:symPar'
        end

        def sym_par_attributes
          attributes_at 'bnk:symPar'
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

        def note_attributes
          attributes_at 'bnk:note'
        end

        def int_note
          at 'bnk:intNote'
        end

        def int_note_attributes
          attributes_at 'bnk:intNote'
        end

        def hist_rate
          at 'bnk:histRate'
        end

        def hist_rate_attributes
          attributes_at 'bnk:histRate'
        end

        def labels
          array_of_at(Typ::LabelType, ['bnk:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['bnk:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'bnk:id'
          hash[:id_attributes] = id_attributes if has? 'bnk:id'
          hash[:bank_type] = bank_type if has? 'bnk:bankType'
          hash[:bank_type_attributes] = bank_type_attributes if has? 'bnk:bankType'
          hash[:account] = account.to_h if has? 'bnk:account'
          hash[:number] = number if has? 'bnk:number'
          hash[:number_attributes] = number_attributes if has? 'bnk:number'
          hash[:statement_number] = statement_number.to_h if has? 'bnk:statementNumber'
          hash[:sym_var] = sym_var if has? 'bnk:symVar'
          hash[:sym_var_attributes] = sym_var_attributes if has? 'bnk:symVar'
          hash[:date_statement] = date_statement if has? 'bnk:dateStatement'
          hash[:date_statement_attributes] = date_statement_attributes if has? 'bnk:dateStatement'
          hash[:date_payment] = date_payment if has? 'bnk:datePayment'
          hash[:date_payment_attributes] = date_payment_attributes if has? 'bnk:datePayment'
          hash[:accounting] = accounting.to_h if has? 'bnk:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'bnk:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'bnk:classificationKVDPH'
          hash[:text] = text if has? 'bnk:text'
          hash[:text_attributes] = text_attributes if has? 'bnk:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'bnk:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'bnk:myIdentity'
          hash[:payment_account] = payment_account.to_h if has? 'bnk:paymentAccount'
          hash[:sym_const] = sym_const if has? 'bnk:symConst'
          hash[:sym_const_attributes] = sym_const_attributes if has? 'bnk:symConst'
          hash[:sym_spec] = sym_spec if has? 'bnk:symSpec'
          hash[:sym_spec_attributes] = sym_spec_attributes if has? 'bnk:symSpec'
          hash[:sym_par] = sym_par if has? 'bnk:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'bnk:symPar'
          hash[:centre] = centre.to_h if has? 'bnk:centre'
          hash[:activity] = activity.to_h if has? 'bnk:activity'
          hash[:contract] = contract.to_h if has? 'bnk:contract'
          hash[:note] = note if has? 'bnk:note'
          hash[:note_attributes] = note_attributes if has? 'bnk:note'
          hash[:int_note] = int_note if has? 'bnk:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'bnk:intNote'
          hash[:hist_rate] = hist_rate if has? 'bnk:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'bnk:histRate'
          hash[:labels] = labels.map(&:to_h) if has? 'bnk:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'bnk:parameters'

          hash
        end
      end
    end
  end
end