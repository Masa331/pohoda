module Pohoda
  module Builders
    module Vch
      class VoucherHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vch:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('vch:voucherType', data[:voucher_type]) if data.key? :voucher_type
          root << build_element('vch:storno', data[:storno]) if data.key? :storno
          if data.key? :cash_account
            root << Typ::RefType.new('cashAccount', data[:cash_account]).builder
          end
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('vch:originalDocument', data[:original_document]) if data.key? :original_document
          root << build_element('vch:date', data[:date]) if data.key? :date
          root << build_element('vch:datePayment', data[:date_payment]) if data.key? :date_payment
          root << build_element('vch:dateTax', data[:date_tax]) if data.key? :date_tax
          root << build_element('vch:dateKHDPH', data[:date_khdph]) if data.key? :date_khdph
          if data.key? :accounting
            root << Typ::AccountingType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('vch:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          root << build_element('vch:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :price_level
            root << Typ::RefType.new('priceLevel', data[:price_level]).builder
          end
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
          root << build_element('vch:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          root << build_element('vch:note', data[:note]) if data.key? :note
          root << build_element('vch:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('vch:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
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