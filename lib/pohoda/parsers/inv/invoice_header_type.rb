module Pohoda
  module Parsers
    module Inv
      class InvoiceHeaderType
        include ParserCore::BaseParser

        def id
          at 'inv:id'
        end

        def id_attributes
          attributes_at 'inv:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'inv:extId')
        end

        def invoice_type
          at 'inv:invoiceType'
        end

        def invoice_type_attributes
          attributes_at 'inv:invoiceType'
        end

        def storno
          at 'inv:storno'
        end

        def storno_attributes
          attributes_at 'inv:storno'
        end

        def sphere_type
          at 'inv:sphereType'
        end

        def sphere_type_attributes
          attributes_at 'inv:sphereType'
        end

        def number
          submodel_at(Typ::NumberType, 'inv:number')
        end

        def sym_var
          at 'inv:symVar'
        end

        def sym_var_attributes
          attributes_at 'inv:symVar'
        end

        def original_document
          at 'inv:originalDocument'
        end

        def original_document_attributes
          attributes_at 'inv:originalDocument'
        end

        def original_document_number
          at 'inv:originalDocumentNumber'
        end

        def original_document_number_attributes
          attributes_at 'inv:originalDocumentNumber'
        end

        def sym_par
          at 'inv:symPar'
        end

        def sym_par_attributes
          attributes_at 'inv:symPar'
        end

        def date
          at 'inv:date'
        end

        def date_attributes
          attributes_at 'inv:date'
        end

        def date_tax
          at 'inv:dateTax'
        end

        def date_tax_attributes
          attributes_at 'inv:dateTax'
        end

        def date_accounting
          at 'inv:dateAccounting'
        end

        def date_accounting_attributes
          attributes_at 'inv:dateAccounting'
        end

        def date_khdph
          at 'inv:dateKHDPH'
        end

        def date_khdph_attributes
          attributes_at 'inv:dateKHDPH'
        end

        def date_due
          at 'inv:dateDue'
        end

        def date_due_attributes
          attributes_at 'inv:dateDue'
        end

        def date_application_vat
          at 'inv:dateApplicationVAT'
        end

        def date_application_vat_attributes
          attributes_at 'inv:dateApplicationVAT'
        end

        def date_delivery
          at 'inv:dateDelivery'
        end

        def date_delivery_attributes
          attributes_at 'inv:dateDelivery'
        end

        def accounting
          submodel_at(Typ::AccountingType, 'inv:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'inv:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'inv:classificationKVDPH')
        end

        def number_khdph
          at 'inv:numberKHDPH'
        end

        def number_khdph_attributes
          attributes_at 'inv:numberKHDPH'
        end

        def number_kvdph
          at 'inv:numberKVDPH'
        end

        def number_kvdph_attributes
          attributes_at 'inv:numberKVDPH'
        end

        def text
          at 'inv:text'
        end

        def text_attributes
          attributes_at 'inv:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'inv:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'inv:myIdentity')
        end

        def order
          submodel_at(Typ::RefType, 'inv:order')
        end

        def number_order
          at 'inv:numberOrder'
        end

        def number_order_attributes
          attributes_at 'inv:numberOrder'
        end

        def date_order
          at 'inv:dateOrder'
        end

        def date_order_attributes
          attributes_at 'inv:dateOrder'
        end

        def price_level
          submodel_at(Typ::RefType, 'inv:priceLevel')
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'inv:paymentType')
        end

        def account
          submodel_at(Typ::AccountType, 'inv:account')
        end

        def sym_const
          at 'inv:symConst'
        end

        def sym_const_attributes
          attributes_at 'inv:symConst'
        end

        def sym_spec
          at 'inv:symSpec'
        end

        def sym_spec_attributes
          attributes_at 'inv:symSpec'
        end

        def payment_account
          submodel_at(Inv::PaymentAccount, 'inv:paymentAccount')
        end

        def message_for_recipient
          at 'inv:messageForRecipient'
        end

        def message_for_recipient_attributes
          attributes_at 'inv:messageForRecipient'
        end

        def date_of_payment_order
          at 'inv:dateOfPaymentOrder'
        end

        def date_of_payment_order_attributes
          attributes_at 'inv:dateOfPaymentOrder'
        end

        def payment_terminal
          at 'inv:paymentTerminal'
        end

        def payment_terminal_attributes
          attributes_at 'inv:paymentTerminal'
        end

        def centre
          submodel_at(Typ::RefType, 'inv:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'inv:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'inv:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'inv:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'inv:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['inv:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'inv:accountingPeriodMOSS'
        end

        def accounting_period_moss_attributes
          attributes_at 'inv:accountingPeriodMOSS'
        end

        def carrier
          submodel_at(Typ::CarrierType, 'inv:carrier')
        end

        def note
          at 'inv:note'
        end

        def note_attributes
          attributes_at 'inv:note'
        end

        def int_note
          at 'inv:intNote'
        end

        def int_note_attributes
          attributes_at 'inv:intNote'
        end

        def liquidation
          submodel_at(Typ::LiquidationType, 'inv:liquidation')
        end

        def applied
          at 'inv:applied'
        end

        def applied_attributes
          attributes_at 'inv:applied'
        end

        def hist_rate
          at 'inv:histRate'
        end

        def hist_rate_attributes
          attributes_at 'inv:histRate'
        end

        def mark_record
          at 'inv:markRecord'
        end

        def mark_record_attributes
          attributes_at 'inv:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['inv:labels', 'typ:label'])
        end

        def intrastat
          submodel_at(Inv::IntrastatType, 'inv:intrastat')
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['inv:parameters', 'typ:parameter'])
        end

        def validate
          submodel_at(Typ::TypeValidate, 'inv:validate')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'inv:id'
          hash[:id_attributes] = id_attributes if has? 'inv:id'
          hash[:ext_id] = ext_id.to_h if has? 'inv:extId'
          hash[:invoice_type] = invoice_type if has? 'inv:invoiceType'
          hash[:invoice_type_attributes] = invoice_type_attributes if has? 'inv:invoiceType'
          hash[:storno] = storno if has? 'inv:storno'
          hash[:storno_attributes] = storno_attributes if has? 'inv:storno'
          hash[:sphere_type] = sphere_type if has? 'inv:sphereType'
          hash[:sphere_type_attributes] = sphere_type_attributes if has? 'inv:sphereType'
          hash[:number] = number.to_h if has? 'inv:number'
          hash[:sym_var] = sym_var if has? 'inv:symVar'
          hash[:sym_var_attributes] = sym_var_attributes if has? 'inv:symVar'
          hash[:original_document] = original_document if has? 'inv:originalDocument'
          hash[:original_document_attributes] = original_document_attributes if has? 'inv:originalDocument'
          hash[:original_document_number] = original_document_number if has? 'inv:originalDocumentNumber'
          hash[:original_document_number_attributes] = original_document_number_attributes if has? 'inv:originalDocumentNumber'
          hash[:sym_par] = sym_par if has? 'inv:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'inv:symPar'
          hash[:date] = date if has? 'inv:date'
          hash[:date_attributes] = date_attributes if has? 'inv:date'
          hash[:date_tax] = date_tax if has? 'inv:dateTax'
          hash[:date_tax_attributes] = date_tax_attributes if has? 'inv:dateTax'
          hash[:date_accounting] = date_accounting if has? 'inv:dateAccounting'
          hash[:date_accounting_attributes] = date_accounting_attributes if has? 'inv:dateAccounting'
          hash[:date_khdph] = date_khdph if has? 'inv:dateKHDPH'
          hash[:date_khdph_attributes] = date_khdph_attributes if has? 'inv:dateKHDPH'
          hash[:date_due] = date_due if has? 'inv:dateDue'
          hash[:date_due_attributes] = date_due_attributes if has? 'inv:dateDue'
          hash[:date_application_vat] = date_application_vat if has? 'inv:dateApplicationVAT'
          hash[:date_application_vat_attributes] = date_application_vat_attributes if has? 'inv:dateApplicationVAT'
          hash[:date_delivery] = date_delivery if has? 'inv:dateDelivery'
          hash[:date_delivery_attributes] = date_delivery_attributes if has? 'inv:dateDelivery'
          hash[:accounting] = accounting.to_h if has? 'inv:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'inv:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'inv:classificationKVDPH'
          hash[:number_khdph] = number_khdph if has? 'inv:numberKHDPH'
          hash[:number_khdph_attributes] = number_khdph_attributes if has? 'inv:numberKHDPH'
          hash[:number_kvdph] = number_kvdph if has? 'inv:numberKVDPH'
          hash[:number_kvdph_attributes] = number_kvdph_attributes if has? 'inv:numberKVDPH'
          hash[:text] = text if has? 'inv:text'
          hash[:text_attributes] = text_attributes if has? 'inv:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'inv:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'inv:myIdentity'
          hash[:order] = order.to_h if has? 'inv:order'
          hash[:number_order] = number_order if has? 'inv:numberOrder'
          hash[:number_order_attributes] = number_order_attributes if has? 'inv:numberOrder'
          hash[:date_order] = date_order if has? 'inv:dateOrder'
          hash[:date_order_attributes] = date_order_attributes if has? 'inv:dateOrder'
          hash[:price_level] = price_level.to_h if has? 'inv:priceLevel'
          hash[:payment_type] = payment_type.to_h if has? 'inv:paymentType'
          hash[:account] = account.to_h if has? 'inv:account'
          hash[:sym_const] = sym_const if has? 'inv:symConst'
          hash[:sym_const_attributes] = sym_const_attributes if has? 'inv:symConst'
          hash[:sym_spec] = sym_spec if has? 'inv:symSpec'
          hash[:sym_spec_attributes] = sym_spec_attributes if has? 'inv:symSpec'
          hash[:payment_account] = payment_account.to_h if has? 'inv:paymentAccount'
          hash[:message_for_recipient] = message_for_recipient if has? 'inv:messageForRecipient'
          hash[:message_for_recipient_attributes] = message_for_recipient_attributes if has? 'inv:messageForRecipient'
          hash[:date_of_payment_order] = date_of_payment_order if has? 'inv:dateOfPaymentOrder'
          hash[:date_of_payment_order_attributes] = date_of_payment_order_attributes if has? 'inv:dateOfPaymentOrder'
          hash[:payment_terminal] = payment_terminal if has? 'inv:paymentTerminal'
          hash[:payment_terminal_attributes] = payment_terminal_attributes if has? 'inv:paymentTerminal'
          hash[:centre] = centre.to_h if has? 'inv:centre'
          hash[:activity] = activity.to_h if has? 'inv:activity'
          hash[:contract] = contract.to_h if has? 'inv:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'inv:regVATinEU'
          hash[:moss] = moss.to_h if has? 'inv:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'inv:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'inv:accountingPeriodMOSS'
          hash[:accounting_period_moss_attributes] = accounting_period_moss_attributes if has? 'inv:accountingPeriodMOSS'
          hash[:carrier] = carrier.to_h if has? 'inv:carrier'
          hash[:note] = note if has? 'inv:note'
          hash[:note_attributes] = note_attributes if has? 'inv:note'
          hash[:int_note] = int_note if has? 'inv:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'inv:intNote'
          hash[:liquidation] = liquidation.to_h if has? 'inv:liquidation'
          hash[:applied] = applied if has? 'inv:applied'
          hash[:applied_attributes] = applied_attributes if has? 'inv:applied'
          hash[:hist_rate] = hist_rate if has? 'inv:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'inv:histRate'
          hash[:mark_record] = mark_record if has? 'inv:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'inv:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'inv:labels'
          hash[:intrastat] = intrastat.to_h if has? 'inv:intrastat'
          hash[:parameters] = parameters.map(&:to_h) if has? 'inv:parameters'
          hash[:validate] = validate.to_h if has? 'inv:validate'

          hash
        end
      end
    end
  end
end