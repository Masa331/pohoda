module Pohoda
  module Builders
    module Adb
      class AddressbookHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('adb:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :identity
            root << Typ::Address.new('adb:identity', data[:identity]).builder
          end
          root << build_element('adb:region', data[:region], data[:region_attributes]) if data.key? :region
          root << build_element('adb:phone', data[:phone], data[:phone_attributes]) if data.key? :phone
          root << build_element('adb:mobil', data[:mobil], data[:mobil_attributes]) if data.key? :mobil
          root << build_element('adb:fax', data[:fax], data[:fax_attributes]) if data.key? :fax
          root << build_element('adb:email', data[:email], data[:email_attributes]) if data.key? :email
          root << build_element('adb:web', data[:web], data[:web_attributes]) if data.key? :web
          root << build_element('adb:ICQ', data[:icq], data[:icq_attributes]) if data.key? :icq
          root << build_element('adb:Skype', data[:skype], data[:skype_attributes]) if data.key? :skype
          root << build_element('adb:GPS', data[:gps], data[:gps_attributes]) if data.key? :gps
          root << build_element('adb:adGroup', data[:ad_group], data[:ad_group_attributes]) if data.key? :ad_group
          root << build_element('adb:adKey', data[:ad_key], data[:ad_key_attributes]) if data.key? :ad_key
          root << build_element('adb:credit', data[:credit], data[:credit_attributes]) if data.key? :credit
          root << build_element('adb:priceIDS', data[:price_ids], data[:price_ids_attributes]) if data.key? :price_ids
          root << build_element('adb:maturity', data[:maturity], data[:maturity_attributes]) if data.key? :maturity
          if data.key? :payment_type
            root << Typ::PaymentType.new('adb:paymentType', data[:payment_type]).builder
          end
          root << build_element('adb:agreement', data[:agreement], data[:agreement_attributes]) if data.key? :agreement
          if data.key? :number
            root << Typ::NumberADType.new('adb:number', data[:number]).builder
          end
          root << build_element('adb:ost1', data[:ost1], data[:ost1_attributes]) if data.key? :ost1
          root << build_element('adb:ost2', data[:ost2], data[:ost2_attributes]) if data.key? :ost2
          root << build_element('adb:function', data[:function], data[:function_attributes]) if data.key? :function
          root << build_element('adb:personalIdentificationNumber', data[:personal_identification_number], data[:personal_identification_number_attributes]) if data.key? :personal_identification_number
          root << build_element('adb:salutation', data[:salutation], data[:salutation_attributes]) if data.key? :salutation
          root << build_element('adb:sex', data[:sex], data[:sex_attributes]) if data.key? :sex
          root << build_element('adb:dateOfBirth', data[:date_of_birth], data[:date_of_birth_attributes]) if data.key? :date_of_birth
          root << build_element('adb:p1', data[:p1], data[:p1_attributes]) if data.key? :p1
          root << build_element('adb:p2', data[:p2], data[:p2_attributes]) if data.key? :p2
          root << build_element('adb:p3', data[:p3], data[:p3_attributes]) if data.key? :p3
          root << build_element('adb:p4', data[:p4], data[:p4_attributes]) if data.key? :p4
          root << build_element('adb:p5', data[:p5], data[:p5_attributes]) if data.key? :p5
          root << build_element('adb:p6', data[:p6], data[:p6_attributes]) if data.key? :p6
          root << build_element('adb:message', data[:message], data[:message_attributes]) if data.key? :message
          root << build_element('adb:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('adb:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          if data.key? :accounting_received_invoice
            root << Typ::AccountingType.new('adb:accountingReceivedInvoice', data[:accounting_received_invoice]).builder
          end
          if data.key? :accounting_issued_invoice
            root << Typ::AccountingType.new('adb:accountingIssuedInvoice', data[:accounting_issued_invoice]).builder
          end
          if data.key? :classification_vat_received_invoice
            root << Typ::ClassificationVATType.new('adb:classificationVATReceivedInvoice', data[:classification_vat_received_invoice]).builder
          end
          if data.key? :classification_vat_issued_invoice
            root << Typ::ClassificationVATType.new('adb:classificationVATIssuedInvoice', data[:classification_vat_issued_invoice]).builder
          end
          if data.key? :classification_kvdph_received_invoice
            root << Typ::RefType.new('adb:classificationKVDPHReceivedInvoice', data[:classification_kvdph_received_invoice]).builder
          end
          if data.key? :classification_kvdph_issued_invoice
            root << Typ::RefType.new('adb:classificationKVDPHIssuedInvoice', data[:classification_kvdph_issued_invoice]).builder
          end
          if data.key? :account_for_invoicing
            root << Typ::AccountType.new('adb:accountForInvoicing', data[:account_for_invoicing]).builder
          end
          if data.key? :responsible_person
            root << Typ::ResponsiblePersonType.new('adb:responsiblePerson', data[:responsible_person]).builder
          end
          root << build_element('adb:toleranceMaturity', data[:tolerance_maturity], data[:tolerance_maturity_attributes]) if data.key? :tolerance_maturity
          if data.key? :foreign_currency
            root << Typ::RefType.new('adb:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('adb:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('adb:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('adb:contract', data[:contract]).builder
          end
          root << build_element('adb:turnover', data[:turnover], data[:turnover_attributes]) if data.key? :turnover
          root << build_element('adb:turnover2', data[:turnover2], data[:turnover2_attributes]) if data.key? :turnover2
          if data.key? :parameters
            element = Ox::Element.new('adb:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end
          if data.key? :ref_address
            root << Typ::RefAddressType.new('adb:refAddress', data[:ref_address]).builder
          end
          root << build_element('adb:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('adb:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end