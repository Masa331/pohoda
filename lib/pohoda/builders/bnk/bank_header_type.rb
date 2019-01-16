module Pohoda
  module Builders
    module Bnk
      class BankHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bnk:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('bnk:bankType', data[:bank_type], data[:bank_type_attributes]) if data.key? :bank_type
          if data.key? :account
            root << Typ::RefType.new('bnk:account', data[:account]).builder
          end
          root << build_element('bnk:number', data[:number], data[:number_attributes]) if data.key? :number
          if data.key? :statement_number
            root << Bnk::StatementNumberType.new('bnk:statementNumber', data[:statement_number]).builder
          end
          root << build_element('bnk:symVar', data[:sym_var], data[:sym_var_attributes]) if data.key? :sym_var
          root << build_element('bnk:dateStatement', data[:date_statement], data[:date_statement_attributes]) if data.key? :date_statement
          root << build_element('bnk:datePayment', data[:date_payment], data[:date_payment_attributes]) if data.key? :date_payment
          if data.key? :accounting
            root << Typ::AccountingType.new('bnk:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('bnk:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('bnk:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('bnk:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('bnk:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('bnk:myIdentity', data[:my_identity]).builder
          end
          if data.key? :payment_account
            root << Bnk::PaymentAccount2.new('bnk:paymentAccount', data[:payment_account]).builder
          end
          root << build_element('bnk:symConst', data[:sym_const], data[:sym_const_attributes]) if data.key? :sym_const
          root << build_element('bnk:symSpec', data[:sym_spec], data[:sym_spec_attributes]) if data.key? :sym_spec
          root << build_element('bnk:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :centre
            root << Typ::RefType.new('bnk:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('bnk:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('bnk:contract', data[:contract]).builder
          end
          root << build_element('bnk:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('bnk:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('bnk:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          if data.key? :labels
            element = Ox::Element.new('bnk:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('bnk:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end