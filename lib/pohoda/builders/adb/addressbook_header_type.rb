module Pohoda
  module Builders
    module Adb
      class AddressbookHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('adb:id', data[:id]) if data.key? :id
          if data.key? :identity
            root << Typ::Address.new('identity', data[:identity]).builder
          end
          root << build_element('adb:region', data[:region]) if data.key? :region
          root << build_element('adb:phone', data[:phone]) if data.key? :phone
          root << build_element('adb:mobil', data[:mobil]) if data.key? :mobil
          root << build_element('adb:fax', data[:fax]) if data.key? :fax
          root << build_element('adb:email', data[:email]) if data.key? :email
          root << build_element('adb:web', data[:web]) if data.key? :web
          root << build_element('adb:ICQ', data[:icq]) if data.key? :icq
          root << build_element('adb:Skype', data[:skype]) if data.key? :skype
          root << build_element('adb:GPS', data[:gps]) if data.key? :gps
          root << build_element('adb:adGroup', data[:ad_group]) if data.key? :ad_group
          root << build_element('adb:adKey', data[:ad_key]) if data.key? :ad_key
          root << build_element('adb:credit', data[:credit]) if data.key? :credit
          root << build_element('adb:priceIDS', data[:price_ids]) if data.key? :price_ids
          root << build_element('adb:maturity', data[:maturity]) if data.key? :maturity
          if data.key? :payment_type
            root << Typ::PaymentType.new('paymentType', data[:payment_type]).builder
          end
          root << build_element('adb:agreement', data[:agreement]) if data.key? :agreement
          if data.key? :number
            root << Typ::NumberADType.new('number', data[:number]).builder
          end
          root << build_element('adb:ost1', data[:ost1]) if data.key? :ost1
          root << build_element('adb:ost2', data[:ost2]) if data.key? :ost2
          root << build_element('adb:function', data[:function]) if data.key? :function
          root << build_element('adb:personalIdentificationNumber', data[:personal_identification_number]) if data.key? :personal_identification_number
          root << build_element('adb:salutation', data[:salutation]) if data.key? :salutation
          root << build_element('adb:sex', data[:sex]) if data.key? :sex
          root << build_element('adb:dateOfBirth', data[:date_of_birth]) if data.key? :date_of_birth
          root << build_element('adb:p1', data[:p1]) if data.key? :p1
          root << build_element('adb:p2', data[:p2]) if data.key? :p2
          root << build_element('adb:p3', data[:p3]) if data.key? :p3
          root << build_element('adb:p4', data[:p4]) if data.key? :p4
          root << build_element('adb:p5', data[:p5]) if data.key? :p5
          root << build_element('adb:p6', data[:p6]) if data.key? :p6
          root << build_element('adb:message', data[:message]) if data.key? :message
          root << build_element('adb:note', data[:note]) if data.key? :note
          root << build_element('adb:intNote', data[:int_note]) if data.key? :int_note
          if data.key? :accounting_received_invoice
            root << Typ::AccountingType.new('accountingReceivedInvoice', data[:accounting_received_invoice]).builder
          end
          if data.key? :accounting_issued_invoice
            root << Typ::AccountingType.new('accountingIssuedInvoice', data[:accounting_issued_invoice]).builder
          end
          if data.key? :classification_vat_received_invoice
            root << Typ::ClassificationVATType.new('classificationVATReceivedInvoice', data[:classification_vat_received_invoice]).builder
          end
          if data.key? :classification_vat_issued_invoice
            root << Typ::ClassificationVATType.new('classificationVATIssuedInvoice', data[:classification_vat_issued_invoice]).builder
          end
          if data.key? :classification_kvdph_received_invoice
            root << Typ::RefType.new('classificationKVDPHReceivedInvoice', data[:classification_kvdph_received_invoice]).builder
          end
          if data.key? :classification_kvdph_issued_invoice
            root << Typ::RefType.new('classificationKVDPHIssuedInvoice', data[:classification_kvdph_issued_invoice]).builder
          end
          if data.key? :account_for_invoicing
            root << Typ::AccountType.new('accountForInvoicing', data[:account_for_invoicing]).builder
          end
          if data.key? :responsible_person
            root << Typ::ResponsiblePersonType.new('responsiblePerson', data[:responsible_person]).builder
          end
          root << build_element('adb:toleranceMaturity', data[:tolerance_maturity]) if data.key? :tolerance_maturity
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          root << build_element('adb:turnover', data[:turnover]) if data.key? :turnover
          root << build_element('adb:turnover2', data[:turnover2]) if data.key? :turnover2
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end
          if data.key? :ref_address
            root << Typ::RefAddressType.new('refAddress', data[:ref_address]).builder
          end
          root << build_element('adb:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end

          root
        end
      end
    end
  end
end