module Pohoda
  module Parsers
    module Int
      class IntDocHeaderType
        include ParserCore::BaseParser

        def id
          at 'int:id'
        end

        def storno
          at 'int:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'int:number')
        end

        def sym_var
          at 'int:symVar'
        end

        def sym_par
          at 'int:symPar'
        end

        def original_document_number
          at 'int:originalDocumentNumber'
        end

        def original_corrective_document
          at 'int:originalCorrectiveDocument'
        end

        def date
          at 'int:date'
        end

        def date_tax
          at 'int:dateTax'
        end

        def date_accounting
          at 'int:dateAccounting'
        end

        def date_delivery
          at 'int:dateDelivery'
        end

        def date_kvdph
          at 'int:dateKVDPH'
        end

        def date_khdph
          at 'int:dateKHDPH'
        end

        def accounting
          submodel_at(Typ::AccountingType, 'int:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'int:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'int:classificationKVDPH')
        end

        def number_khdph
          at 'int:numberKHDPH'
        end

        def text
          at 'int:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'int:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'int:myIdentity')
        end

        def liquidation
          at 'int:liquidation'
        end

        def centre
          submodel_at(Typ::RefType, 'int:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'int:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'int:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'int:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'int:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['int:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'int:accountingPeriodMOSS'
        end

        def note
          at 'int:note'
        end

        def int_note
          at 'int:intNote'
        end

        def mark_record
          at 'int:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['int:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['int:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'int:id'
          hash[:storno] = storno if has? 'int:storno'
          hash[:number] = number.to_h_with_attrs if has? 'int:number'
          hash[:sym_var] = sym_var if has? 'int:symVar'
          hash[:sym_par] = sym_par if has? 'int:symPar'
          hash[:original_document_number] = original_document_number if has? 'int:originalDocumentNumber'
          hash[:original_corrective_document] = original_corrective_document if has? 'int:originalCorrectiveDocument'
          hash[:date] = date if has? 'int:date'
          hash[:date_tax] = date_tax if has? 'int:dateTax'
          hash[:date_accounting] = date_accounting if has? 'int:dateAccounting'
          hash[:date_delivery] = date_delivery if has? 'int:dateDelivery'
          hash[:date_kvdph] = date_kvdph if has? 'int:dateKVDPH'
          hash[:date_khdph] = date_khdph if has? 'int:dateKHDPH'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'int:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'int:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'int:classificationKVDPH'
          hash[:number_khdph] = number_khdph if has? 'int:numberKHDPH'
          hash[:text] = text if has? 'int:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'int:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'int:myIdentity'
          hash[:liquidation] = liquidation if has? 'int:liquidation'
          hash[:centre] = centre.to_h_with_attrs if has? 'int:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'int:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'int:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'int:regVATinEU'
          hash[:moss] = moss.to_h_with_attrs if has? 'int:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'int:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'int:accountingPeriodMOSS'
          hash[:note] = note if has? 'int:note'
          hash[:int_note] = int_note if has? 'int:intNote'
          hash[:mark_record] = mark_record if has? 'int:markRecord'
          hash[:labels] = labels.map(&:to_h_with_attrs) if has? 'int:labels'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'int:parameters'

          hash
        end
      end
    end
  end
end