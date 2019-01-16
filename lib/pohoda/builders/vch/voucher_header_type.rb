module Pohoda
  module Builders
    module Vch
      class VoucherHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('vch:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('vch:extId', data[:ext_id]).builder
          end
          root << build_element('vch:voucherType', data[:voucher_type], data[:voucher_type_attributes]) if data.key? :voucher_type
          root << build_element('vch:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          if data.key? :cash_account
            root << Typ::RefType.new('vch:cashAccount', data[:cash_account]).builder
          end
          if data.key? :number
            root << Typ::NumberType.new('vch:number', data[:number]).builder
          end
          root << build_element('vch:originalDocument', data[:original_document], data[:original_document_attributes]) if data.key? :original_document
          root << build_element('vch:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('vch:datePayment', data[:date_payment], data[:date_payment_attributes]) if data.key? :date_payment
          root << build_element('vch:dateTax', data[:date_tax], data[:date_tax_attributes]) if data.key? :date_tax
          root << build_element('vch:dateKHDPH', data[:date_khdph], data[:date_khdph_attributes]) if data.key? :date_khdph
          if data.key? :accounting
            root << Typ::AccountingType.new('vch:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('vch:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('vch:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('vch:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('vch:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('vch:myIdentity', data[:my_identity]).builder
          end
          root << build_element('vch:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :price_level
            root << Typ::RefType.new('vch:priceLevel', data[:price_level]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('vch:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vch:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vch:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('vch:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('vch:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('vch:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('vch:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          root << build_element('vch:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('vch:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('vch:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('vch:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('vch:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('vch:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end
          if data.key? :validate
            root << Typ::TypeValidate.new('vch:validate', data[:validate]).builder
          end

          root
        end
      end
    end
  end
end