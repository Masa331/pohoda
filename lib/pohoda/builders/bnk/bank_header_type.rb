module Pohoda
  module Builders
    module Bnk
      class BankHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bnk:id', data[:id]) if data.key? :id
          root << build_element('bnk:bankType', data[:bank_type]) if data.key? :bank_type
          if data.key? :account
            root << Typ::RefType.new('account', data[:account]).builder
          end
          root << build_element('bnk:number', data[:number]) if data.key? :number
          if data.key? :statement_number
            root << Bnk::StatementNumberType.new('statementNumber', data[:statement_number]).builder
          end
          root << build_element('bnk:symVar', data[:sym_var]) if data.key? :sym_var
          root << build_element('bnk:dateStatement', data[:date_statement]) if data.key? :date_statement
          root << build_element('bnk:datePayment', data[:date_payment]) if data.key? :date_payment
          if data.key? :accounting
            root << Typ::AccountingType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('bnk:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          if data.key? :payment_account
            root << Bnk::PaymentAccount2.new('paymentAccount', data[:payment_account]).builder
          end
          root << build_element('bnk:symConst', data[:sym_const]) if data.key? :sym_const
          root << build_element('bnk:symSpec', data[:sym_spec]) if data.key? :sym_spec
          root << build_element('bnk:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          root << build_element('bnk:note', data[:note]) if data.key? :note
          root << build_element('bnk:intNote', data[:int_note]) if data.key? :int_note
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end