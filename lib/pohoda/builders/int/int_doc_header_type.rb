module Pohoda
  module Builders
    module Int
      class IntDocHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('int:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('int:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('int:number', data[:number]).builder
          end
          root << build_element('int:symVar', data[:sym_var], data[:sym_var_attributes]) if data.key? :sym_var
          root << build_element('int:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          root << build_element('int:originalDocumentNumber', data[:original_document_number], data[:original_document_number_attributes]) if data.key? :original_document_number
          root << build_element('int:originalCorrectiveDocument', data[:original_corrective_document], data[:original_corrective_document_attributes]) if data.key? :original_corrective_document
          root << build_element('int:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('int:dateTax', data[:date_tax], data[:date_tax_attributes]) if data.key? :date_tax
          root << build_element('int:dateAccounting', data[:date_accounting], data[:date_accounting_attributes]) if data.key? :date_accounting
          root << build_element('int:dateDelivery', data[:date_delivery], data[:date_delivery_attributes]) if data.key? :date_delivery
          root << build_element('int:dateKVDPH', data[:date_kvdph], data[:date_kvdph_attributes]) if data.key? :date_kvdph
          root << build_element('int:dateKHDPH', data[:date_khdph], data[:date_khdph_attributes]) if data.key? :date_khdph
          if data.key? :accounting
            root << Typ::AccountingType.new('int:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('int:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('int:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('int:numberKHDPH', data[:number_khdph], data[:number_khdph_attributes]) if data.key? :number_khdph
          root << build_element('int:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('int:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('int:myIdentity', data[:my_identity]).builder
          end
          root << build_element('int:liquidation', data[:liquidation], data[:liquidation_attributes]) if data.key? :liquidation
          if data.key? :centre
            root << Typ::RefType.new('int:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('int:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('int:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('int:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('int:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('int:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('int:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          root << build_element('int:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('int:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('int:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('int:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('int:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('int:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end