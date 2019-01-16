module Pohoda
  module Parsers
    module Vch
      class VoucherHeaderType
        include ParserCore::BaseParser

        def id
          at 'vch:id'
        end

        def id_attributes
          attributes_at 'vch:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'vch:extId')
        end

        def voucher_type
          at 'vch:voucherType'
        end

        def voucher_type_attributes
          attributes_at 'vch:voucherType'
        end

        def storno
          at 'vch:storno'
        end

        def storno_attributes
          attributes_at 'vch:storno'
        end

        def cash_account
          submodel_at(Typ::RefType, 'vch:cashAccount')
        end

        def number
          submodel_at(Typ::NumberType, 'vch:number')
        end

        def original_document
          at 'vch:originalDocument'
        end

        def original_document_attributes
          attributes_at 'vch:originalDocument'
        end

        def date
          at 'vch:date'
        end

        def date_attributes
          attributes_at 'vch:date'
        end

        def date_payment
          at 'vch:datePayment'
        end

        def date_payment_attributes
          attributes_at 'vch:datePayment'
        end

        def date_tax
          at 'vch:dateTax'
        end

        def date_tax_attributes
          attributes_at 'vch:dateTax'
        end

        def date_khdph
          at 'vch:dateKHDPH'
        end

        def date_khdph_attributes
          attributes_at 'vch:dateKHDPH'
        end

        def accounting
          submodel_at(Typ::AccountingType, 'vch:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'vch:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'vch:classificationKVDPH')
        end

        def text
          at 'vch:text'
        end

        def text_attributes
          attributes_at 'vch:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'vch:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'vch:myIdentity')
        end

        def sym_par
          at 'vch:symPar'
        end

        def sym_par_attributes
          attributes_at 'vch:symPar'
        end

        def price_level
          submodel_at(Typ::RefType, 'vch:priceLevel')
        end

        def centre
          submodel_at(Typ::RefType, 'vch:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'vch:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vch:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'vch:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'vch:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['vch:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'vch:accountingPeriodMOSS'
        end

        def accounting_period_moss_attributes
          attributes_at 'vch:accountingPeriodMOSS'
        end

        def note
          at 'vch:note'
        end

        def note_attributes
          attributes_at 'vch:note'
        end

        def int_note
          at 'vch:intNote'
        end

        def int_note_attributes
          attributes_at 'vch:intNote'
        end

        def hist_rate
          at 'vch:histRate'
        end

        def hist_rate_attributes
          attributes_at 'vch:histRate'
        end

        def mark_record
          at 'vch:markRecord'
        end

        def mark_record_attributes
          attributes_at 'vch:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['vch:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['vch:parameters', 'typ:parameter'])
        end

        def validate
          submodel_at(Typ::TypeValidate, 'vch:validate')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'vch:id'
          hash[:id_attributes] = id_attributes if has? 'vch:id'
          hash[:ext_id] = ext_id.to_h if has? 'vch:extId'
          hash[:voucher_type] = voucher_type if has? 'vch:voucherType'
          hash[:voucher_type_attributes] = voucher_type_attributes if has? 'vch:voucherType'
          hash[:storno] = storno if has? 'vch:storno'
          hash[:storno_attributes] = storno_attributes if has? 'vch:storno'
          hash[:cash_account] = cash_account.to_h if has? 'vch:cashAccount'
          hash[:number] = number.to_h if has? 'vch:number'
          hash[:original_document] = original_document if has? 'vch:originalDocument'
          hash[:original_document_attributes] = original_document_attributes if has? 'vch:originalDocument'
          hash[:date] = date if has? 'vch:date'
          hash[:date_attributes] = date_attributes if has? 'vch:date'
          hash[:date_payment] = date_payment if has? 'vch:datePayment'
          hash[:date_payment_attributes] = date_payment_attributes if has? 'vch:datePayment'
          hash[:date_tax] = date_tax if has? 'vch:dateTax'
          hash[:date_tax_attributes] = date_tax_attributes if has? 'vch:dateTax'
          hash[:date_khdph] = date_khdph if has? 'vch:dateKHDPH'
          hash[:date_khdph_attributes] = date_khdph_attributes if has? 'vch:dateKHDPH'
          hash[:accounting] = accounting.to_h if has? 'vch:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'vch:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'vch:classificationKVDPH'
          hash[:text] = text if has? 'vch:text'
          hash[:text_attributes] = text_attributes if has? 'vch:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'vch:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'vch:myIdentity'
          hash[:sym_par] = sym_par if has? 'vch:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'vch:symPar'
          hash[:price_level] = price_level.to_h if has? 'vch:priceLevel'
          hash[:centre] = centre.to_h if has? 'vch:centre'
          hash[:activity] = activity.to_h if has? 'vch:activity'
          hash[:contract] = contract.to_h if has? 'vch:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'vch:regVATinEU'
          hash[:moss] = moss.to_h if has? 'vch:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'vch:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'vch:accountingPeriodMOSS'
          hash[:accounting_period_moss_attributes] = accounting_period_moss_attributes if has? 'vch:accountingPeriodMOSS'
          hash[:note] = note if has? 'vch:note'
          hash[:note_attributes] = note_attributes if has? 'vch:note'
          hash[:int_note] = int_note if has? 'vch:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'vch:intNote'
          hash[:hist_rate] = hist_rate if has? 'vch:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'vch:histRate'
          hash[:mark_record] = mark_record if has? 'vch:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'vch:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'vch:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'vch:parameters'
          hash[:validate] = validate.to_h if has? 'vch:validate'

          hash
        end
      end
    end
  end
end