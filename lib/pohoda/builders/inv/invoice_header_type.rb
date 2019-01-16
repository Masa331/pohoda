module Pohoda
  module Builders
    module Inv
      class InvoiceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('inv:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('inv:extId', data[:ext_id]).builder
          end
          root << build_element('inv:invoiceType', data[:invoice_type], data[:invoice_type_attributes]) if data.key? :invoice_type
          root << build_element('inv:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          root << build_element('inv:sphereType', data[:sphere_type], data[:sphere_type_attributes]) if data.key? :sphere_type
          if data.key? :number
            root << Typ::NumberType.new('inv:number', data[:number]).builder
          end
          root << build_element('inv:symVar', data[:sym_var], data[:sym_var_attributes]) if data.key? :sym_var
          root << build_element('inv:originalDocument', data[:original_document], data[:original_document_attributes]) if data.key? :original_document
          root << build_element('inv:originalDocumentNumber', data[:original_document_number], data[:original_document_number_attributes]) if data.key? :original_document_number
          root << build_element('inv:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          root << build_element('inv:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('inv:dateTax', data[:date_tax], data[:date_tax_attributes]) if data.key? :date_tax
          root << build_element('inv:dateAccounting', data[:date_accounting], data[:date_accounting_attributes]) if data.key? :date_accounting
          root << build_element('inv:dateKHDPH', data[:date_khdph], data[:date_khdph_attributes]) if data.key? :date_khdph
          root << build_element('inv:dateDue', data[:date_due], data[:date_due_attributes]) if data.key? :date_due
          root << build_element('inv:dateApplicationVAT', data[:date_application_vat], data[:date_application_vat_attributes]) if data.key? :date_application_vat
          root << build_element('inv:dateDelivery', data[:date_delivery], data[:date_delivery_attributes]) if data.key? :date_delivery
          if data.key? :accounting
            root << Typ::AccountingType.new('inv:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('inv:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('inv:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('inv:numberKHDPH', data[:number_khdph], data[:number_khdph_attributes]) if data.key? :number_khdph
          root << build_element('inv:numberKVDPH', data[:number_kvdph], data[:number_kvdph_attributes]) if data.key? :number_kvdph
          root << build_element('inv:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('inv:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('inv:myIdentity', data[:my_identity]).builder
          end
          if data.key? :order
            root << Typ::RefType.new('inv:order', data[:order]).builder
          end
          root << build_element('inv:numberOrder', data[:number_order], data[:number_order_attributes]) if data.key? :number_order
          root << build_element('inv:dateOrder', data[:date_order], data[:date_order_attributes]) if data.key? :date_order
          if data.key? :price_level
            root << Typ::RefType.new('inv:priceLevel', data[:price_level]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('inv:paymentType', data[:payment_type]).builder
          end
          if data.key? :account
            root << Typ::AccountType.new('inv:account', data[:account]).builder
          end
          root << build_element('inv:symConst', data[:sym_const], data[:sym_const_attributes]) if data.key? :sym_const
          root << build_element('inv:symSpec', data[:sym_spec], data[:sym_spec_attributes]) if data.key? :sym_spec
          if data.key? :payment_account
            root << Inv::PaymentAccount.new('inv:paymentAccount', data[:payment_account]).builder
          end
          root << build_element('inv:messageForRecipient', data[:message_for_recipient], data[:message_for_recipient_attributes]) if data.key? :message_for_recipient
          root << build_element('inv:dateOfPaymentOrder', data[:date_of_payment_order], data[:date_of_payment_order_attributes]) if data.key? :date_of_payment_order
          root << build_element('inv:paymentTerminal', data[:payment_terminal], data[:payment_terminal_attributes]) if data.key? :payment_terminal
          if data.key? :centre
            root << Typ::RefType.new('inv:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('inv:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('inv:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('inv:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('inv:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('inv:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('inv:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          if data.key? :carrier
            root << Typ::CarrierType.new('inv:carrier', data[:carrier]).builder
          end
          root << build_element('inv:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('inv:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          if data.key? :liquidation
            root << Typ::LiquidationType.new('inv:liquidation', data[:liquidation]).builder
          end
          root << build_element('inv:applied', data[:applied], data[:applied_attributes]) if data.key? :applied
          root << build_element('inv:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('inv:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('inv:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :intrastat
            root << Inv::IntrastatType.new('inv:intrastat', data[:intrastat]).builder
          end
          if data.key? :parameters
            element = Ox::Element.new('inv:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end
          if data.key? :validate
            root << Typ::TypeValidate.new('inv:validate', data[:validate]).builder
          end

          root
        end
      end
    end
  end
end