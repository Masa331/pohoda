module Pohoda
  module Builders
    module Int
      class IntDocHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('int:id', data[:id]) if data.key? :id
          root << build_element('int:storno', data[:storno]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('int:symVar', data[:sym_var]) if data.key? :sym_var
          root << build_element('int:symPar', data[:sym_par]) if data.key? :sym_par
          root << build_element('int:originalDocumentNumber', data[:original_document_number]) if data.key? :original_document_number
          root << build_element('int:originalCorrectiveDocument', data[:original_corrective_document]) if data.key? :original_corrective_document
          root << build_element('int:date', data[:date]) if data.key? :date
          root << build_element('int:dateTax', data[:date_tax]) if data.key? :date_tax
          root << build_element('int:dateAccounting', data[:date_accounting]) if data.key? :date_accounting
          root << build_element('int:dateDelivery', data[:date_delivery]) if data.key? :date_delivery
          root << build_element('int:dateKVDPH', data[:date_kvdph]) if data.key? :date_kvdph
          root << build_element('int:dateKHDPH', data[:date_khdph]) if data.key? :date_khdph
          if data.key? :accounting
            root << Typ::AccountingType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('int:numberKHDPH', data[:number_khdph]) if data.key? :number_khdph
          root << build_element('int:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          root << build_element('int:liquidation', data[:liquidation]) if data.key? :liquidation
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
          root << build_element('int:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          root << build_element('int:note', data[:note]) if data.key? :note
          root << build_element('int:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('int:markRecord', data[:mark_record]) if data.key? :mark_record
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