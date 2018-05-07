module Pohoda
  module Parsers
    module Inv
      class InvoiceHeaderType
        include ParserCore::BaseParser

        def id
          at 'inv:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'inv:extId')
        end

        def invoice_type
          at 'inv:invoiceType'
        end

        def storno
          at 'inv:storno'
        end

        def sphere_type
          at 'inv:sphereType'
        end

        def number
          submodel_at(Typ::NumberType, 'inv:number')
        end

        def sym_var
          at 'inv:symVar'
        end

        def original_document
          at 'inv:originalDocument'
        end

        def original_document_number
          at 'inv:originalDocumentNumber'
        end

        def sym_par
          at 'inv:symPar'
        end

        def date
          at 'inv:date'
        end

        def date_tax
          at 'inv:dateTax'
        end

        def date_accounting
          at 'inv:dateAccounting'
        end

        def date_khdph
          at 'inv:dateKHDPH'
        end

        def date_due
          at 'inv:dateDue'
        end

        def date_application_vat
          at 'inv:dateApplicationVAT'
        end

        def date_delivery
          at 'inv:dateDelivery'
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

        def number_kvdph
          at 'inv:numberKVDPH'
        end

        def text
          at 'inv:text'
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

        def date_order
          at 'inv:dateOrder'
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

        def sym_spec
          at 'inv:symSpec'
        end

        def payment_account
          submodel_at(Inv::PaymentAccount, 'inv:paymentAccount')
        end

        def payment_terminal
          at 'inv:paymentTerminal'
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
          submodel_at(Typ::ResourcesMOSStype, 'inv:evidentiaryResourcesMOSS')
        end

        def accounting_period_moss
          at 'inv:accountingPeriodMOSS'
        end

        def carrier
          submodel_at(Typ::RefType, 'inv:carrier')
        end

        def note
          at 'inv:note'
        end

        def int_note
          at 'inv:intNote'
        end

        def liquidation
          submodel_at(Typ::LiquidationType, 'inv:liquidation')
        end

        def mark_record
          at 'inv:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'inv:labels')
        end

        def intrastat
          submodel_at(Inv::IntrastatType, 'inv:intrastat')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'inv:parameters')
        end

        def validate
          submodel_at(Typ::TypeValidate, 'inv:validate')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'inv:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'inv:extId'
          hash[:invoice_type] = invoice_type if has? 'inv:invoiceType'
          hash[:storno] = storno if has? 'inv:storno'
          hash[:sphere_type] = sphere_type if has? 'inv:sphereType'
          hash[:number] = number.to_h_with_attrs if has? 'inv:number'
          hash[:sym_var] = sym_var if has? 'inv:symVar'
          hash[:original_document] = original_document if has? 'inv:originalDocument'
          hash[:original_document_number] = original_document_number if has? 'inv:originalDocumentNumber'
          hash[:sym_par] = sym_par if has? 'inv:symPar'
          hash[:date] = date if has? 'inv:date'
          hash[:date_tax] = date_tax if has? 'inv:dateTax'
          hash[:date_accounting] = date_accounting if has? 'inv:dateAccounting'
          hash[:date_khdph] = date_khdph if has? 'inv:dateKHDPH'
          hash[:date_due] = date_due if has? 'inv:dateDue'
          hash[:date_application_vat] = date_application_vat if has? 'inv:dateApplicationVAT'
          hash[:date_delivery] = date_delivery if has? 'inv:dateDelivery'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'inv:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'inv:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'inv:classificationKVDPH'
          hash[:number_khdph] = number_khdph if has? 'inv:numberKHDPH'
          hash[:number_kvdph] = number_kvdph if has? 'inv:numberKVDPH'
          hash[:text] = text if has? 'inv:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'inv:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'inv:myIdentity'
          hash[:order] = order.to_h_with_attrs if has? 'inv:order'
          hash[:number_order] = number_order if has? 'inv:numberOrder'
          hash[:date_order] = date_order if has? 'inv:dateOrder'
          hash[:price_level] = price_level.to_h_with_attrs if has? 'inv:priceLevel'
          hash[:payment_type] = payment_type.to_h_with_attrs if has? 'inv:paymentType'
          hash[:account] = account.to_h_with_attrs if has? 'inv:account'
          hash[:sym_const] = sym_const if has? 'inv:symConst'
          hash[:sym_spec] = sym_spec if has? 'inv:symSpec'
          hash[:payment_account] = payment_account.to_h_with_attrs if has? 'inv:paymentAccount'
          hash[:payment_terminal] = payment_terminal if has? 'inv:paymentTerminal'
          hash[:centre] = centre.to_h_with_attrs if has? 'inv:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'inv:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'inv:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'inv:regVATinEU'
          hash[:moss] = moss.to_h_with_attrs if has? 'inv:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss.to_h_with_attrs if has? 'inv:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'inv:accountingPeriodMOSS'
          hash[:carrier] = carrier.to_h_with_attrs if has? 'inv:carrier'
          hash[:note] = note if has? 'inv:note'
          hash[:int_note] = int_note if has? 'inv:intNote'
          hash[:liquidation] = liquidation.to_h_with_attrs if has? 'inv:liquidation'
          hash[:mark_record] = mark_record if has? 'inv:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'inv:labels'
          hash[:intrastat] = intrastat.to_h_with_attrs if has? 'inv:intrastat'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'inv:parameters'
          hash[:validate] = validate.to_h_with_attrs if has? 'inv:validate'

          hash
        end
      end
    end
  end
end