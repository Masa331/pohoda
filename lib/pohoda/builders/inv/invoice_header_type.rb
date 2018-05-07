module Pohoda
  module Builders
    module Inv
      class InvoiceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('inv:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('inv:invoiceType', data[:invoice_type]) if data.key? :invoice_type
          root << build_element('inv:storno', data[:storno]) if data.key? :storno
          root << build_element('inv:sphereType', data[:sphere_type]) if data.key? :sphere_type
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('inv:symVar', data[:sym_var]) if data.key? :sym_var
          root << build_element('inv:originalDocument', data[:original_document]) if data.key? :original_document
          root << build_element('inv:originalDocumentNumber', data[:original_document_number]) if data.key? :original_document_number
          root << build_element('inv:symPar', data[:sym_par]) if data.key? :sym_par
          root << build_element('inv:date', data[:date]) if data.key? :date
          root << build_element('inv:dateTax', data[:date_tax]) if data.key? :date_tax
          root << build_element('inv:dateAccounting', data[:date_accounting]) if data.key? :date_accounting
          root << build_element('inv:dateKHDPH', data[:date_khdph]) if data.key? :date_khdph
          root << build_element('inv:dateDue', data[:date_due]) if data.key? :date_due
          root << build_element('inv:dateApplicationVAT', data[:date_application_vat]) if data.key? :date_application_vat
          root << build_element('inv:dateDelivery', data[:date_delivery]) if data.key? :date_delivery
          if data.key? :accounting
            root << Typ::AccountingType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('inv:numberKHDPH', data[:number_khdph]) if data.key? :number_khdph
          root << build_element('inv:numberKVDPH', data[:number_kvdph]) if data.key? :number_kvdph
          root << build_element('inv:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          if data.key? :order
            root << Typ::RefType.new('order', data[:order]).builder
          end
          root << build_element('inv:numberOrder', data[:number_order]) if data.key? :number_order
          root << build_element('inv:dateOrder', data[:date_order]) if data.key? :date_order
          if data.key? :price_level
            root << Typ::RefType.new('priceLevel', data[:price_level]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('paymentType', data[:payment_type]).builder
          end
          if data.key? :account
            root << Typ::AccountType.new('account', data[:account]).builder
          end
          root << build_element('inv:symConst', data[:sym_const]) if data.key? :sym_const
          root << build_element('inv:symSpec', data[:sym_spec]) if data.key? :sym_spec
          if data.key? :payment_account
            root << Inv::PaymentAccount.new('paymentAccount', data[:payment_account]).builder
          end
          root << build_element('inv:paymentTerminal', data[:payment_terminal]) if data.key? :payment_terminal
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            root << Typ::ResourcesMOSStype.new('evidentiaryResourcesMOSS', data[:evidentiary_resources_moss]).builder
          end
          root << build_element('inv:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          if data.key? :carrier
            root << Typ::RefType.new('carrier', data[:carrier]).builder
          end
          root << build_element('inv:note', data[:note]) if data.key? :note
          root << build_element('inv:intNote', data[:int_note]) if data.key? :int_note
          if data.key? :liquidation
            root << Typ::LiquidationType.new('liquidation', data[:liquidation]).builder
          end
          root << build_element('inv:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end
          if data.key? :intrastat
            root << Inv::IntrastatType.new('intrastat', data[:intrastat]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end
          if data.key? :validate
            root << Typ::TypeValidate.new('validate', data[:validate]).builder
          end

          root
        end
      end
    end
  end
end