module Pohoda
  module Parsers
    module Adb
      class AddressbookHeaderType
        include ParserCore::BaseParser

        def id
          at 'adb:id'
        end

        def id_attributes
          attributes_at 'adb:id'
        end

        def identity
          submodel_at(Typ::Address, 'adb:identity')
        end

        def region
          at 'adb:region'
        end

        def region_attributes
          attributes_at 'adb:region'
        end

        def phone
          at 'adb:phone'
        end

        def phone_attributes
          attributes_at 'adb:phone'
        end

        def mobil
          at 'adb:mobil'
        end

        def mobil_attributes
          attributes_at 'adb:mobil'
        end

        def fax
          at 'adb:fax'
        end

        def fax_attributes
          attributes_at 'adb:fax'
        end

        def email
          at 'adb:email'
        end

        def email_attributes
          attributes_at 'adb:email'
        end

        def web
          at 'adb:web'
        end

        def web_attributes
          attributes_at 'adb:web'
        end

        def icq
          at 'adb:ICQ'
        end

        def icq_attributes
          attributes_at 'adb:ICQ'
        end

        def skype
          at 'adb:Skype'
        end

        def skype_attributes
          attributes_at 'adb:Skype'
        end

        def gps
          at 'adb:GPS'
        end

        def gps_attributes
          attributes_at 'adb:GPS'
        end

        def ad_group
          at 'adb:adGroup'
        end

        def ad_group_attributes
          attributes_at 'adb:adGroup'
        end

        def ad_key
          at 'adb:adKey'
        end

        def ad_key_attributes
          attributes_at 'adb:adKey'
        end

        def credit
          at 'adb:credit'
        end

        def credit_attributes
          attributes_at 'adb:credit'
        end

        def price_ids
          at 'adb:priceIDS'
        end

        def price_ids_attributes
          attributes_at 'adb:priceIDS'
        end

        def maturity
          at 'adb:maturity'
        end

        def maturity_attributes
          attributes_at 'adb:maturity'
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'adb:paymentType')
        end

        def agreement
          at 'adb:agreement'
        end

        def agreement_attributes
          attributes_at 'adb:agreement'
        end

        def number
          submodel_at(Typ::NumberADType, 'adb:number')
        end

        def ost1
          at 'adb:ost1'
        end

        def ost1_attributes
          attributes_at 'adb:ost1'
        end

        def ost2
          at 'adb:ost2'
        end

        def ost2_attributes
          attributes_at 'adb:ost2'
        end

        def function
          at 'adb:function'
        end

        def function_attributes
          attributes_at 'adb:function'
        end

        def personal_identification_number
          at 'adb:personalIdentificationNumber'
        end

        def personal_identification_number_attributes
          attributes_at 'adb:personalIdentificationNumber'
        end

        def salutation
          at 'adb:salutation'
        end

        def salutation_attributes
          attributes_at 'adb:salutation'
        end

        def sex
          at 'adb:sex'
        end

        def sex_attributes
          attributes_at 'adb:sex'
        end

        def date_of_birth
          at 'adb:dateOfBirth'
        end

        def date_of_birth_attributes
          attributes_at 'adb:dateOfBirth'
        end

        def p1
          at 'adb:p1'
        end

        def p1_attributes
          attributes_at 'adb:p1'
        end

        def p2
          at 'adb:p2'
        end

        def p2_attributes
          attributes_at 'adb:p2'
        end

        def p3
          at 'adb:p3'
        end

        def p3_attributes
          attributes_at 'adb:p3'
        end

        def p4
          at 'adb:p4'
        end

        def p4_attributes
          attributes_at 'adb:p4'
        end

        def p5
          at 'adb:p5'
        end

        def p5_attributes
          attributes_at 'adb:p5'
        end

        def p6
          at 'adb:p6'
        end

        def p6_attributes
          attributes_at 'adb:p6'
        end

        def message
          at 'adb:message'
        end

        def message_attributes
          attributes_at 'adb:message'
        end

        def note
          at 'adb:note'
        end

        def note_attributes
          attributes_at 'adb:note'
        end

        def int_note
          at 'adb:intNote'
        end

        def int_note_attributes
          attributes_at 'adb:intNote'
        end

        def accounting_received_invoice
          submodel_at(Typ::AccountingType, 'adb:accountingReceivedInvoice')
        end

        def accounting_issued_invoice
          submodel_at(Typ::AccountingType, 'adb:accountingIssuedInvoice')
        end

        def classification_vat_received_invoice
          submodel_at(Typ::ClassificationVATType, 'adb:classificationVATReceivedInvoice')
        end

        def classification_vat_issued_invoice
          submodel_at(Typ::ClassificationVATType, 'adb:classificationVATIssuedInvoice')
        end

        def classification_kvdph_received_invoice
          submodel_at(Typ::RefType, 'adb:classificationKVDPHReceivedInvoice')
        end

        def classification_kvdph_issued_invoice
          submodel_at(Typ::RefType, 'adb:classificationKVDPHIssuedInvoice')
        end

        def account_for_invoicing
          submodel_at(Typ::AccountType, 'adb:accountForInvoicing')
        end

        def responsible_person
          submodel_at(Typ::ResponsiblePersonType, 'adb:responsiblePerson')
        end

        def tolerance_maturity
          at 'adb:toleranceMaturity'
        end

        def tolerance_maturity_attributes
          attributes_at 'adb:toleranceMaturity'
        end

        def foreign_currency
          submodel_at(Typ::RefType, 'adb:foreignCurrency')
        end

        def centre
          submodel_at(Typ::RefType, 'adb:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'adb:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'adb:contract')
        end

        def turnover
          at 'adb:turnover'
        end

        def turnover_attributes
          attributes_at 'adb:turnover'
        end

        def turnover2
          at 'adb:turnover2'
        end

        def turnover2_attributes
          attributes_at 'adb:turnover2'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['adb:parameters', 'typ:parameter'])
        end

        def ref_address
          submodel_at(Typ::RefAddressType, 'adb:refAddress')
        end

        def mark_record
          at 'adb:markRecord'
        end

        def mark_record_attributes
          attributes_at 'adb:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['adb:labels', 'typ:label'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'adb:id'
          hash[:id_attributes] = id_attributes if has? 'adb:id'
          hash[:identity] = identity.to_h if has? 'adb:identity'
          hash[:region] = region if has? 'adb:region'
          hash[:region_attributes] = region_attributes if has? 'adb:region'
          hash[:phone] = phone if has? 'adb:phone'
          hash[:phone_attributes] = phone_attributes if has? 'adb:phone'
          hash[:mobil] = mobil if has? 'adb:mobil'
          hash[:mobil_attributes] = mobil_attributes if has? 'adb:mobil'
          hash[:fax] = fax if has? 'adb:fax'
          hash[:fax_attributes] = fax_attributes if has? 'adb:fax'
          hash[:email] = email if has? 'adb:email'
          hash[:email_attributes] = email_attributes if has? 'adb:email'
          hash[:web] = web if has? 'adb:web'
          hash[:web_attributes] = web_attributes if has? 'adb:web'
          hash[:icq] = icq if has? 'adb:ICQ'
          hash[:icq_attributes] = icq_attributes if has? 'adb:ICQ'
          hash[:skype] = skype if has? 'adb:Skype'
          hash[:skype_attributes] = skype_attributes if has? 'adb:Skype'
          hash[:gps] = gps if has? 'adb:GPS'
          hash[:gps_attributes] = gps_attributes if has? 'adb:GPS'
          hash[:ad_group] = ad_group if has? 'adb:adGroup'
          hash[:ad_group_attributes] = ad_group_attributes if has? 'adb:adGroup'
          hash[:ad_key] = ad_key if has? 'adb:adKey'
          hash[:ad_key_attributes] = ad_key_attributes if has? 'adb:adKey'
          hash[:credit] = credit if has? 'adb:credit'
          hash[:credit_attributes] = credit_attributes if has? 'adb:credit'
          hash[:price_ids] = price_ids if has? 'adb:priceIDS'
          hash[:price_ids_attributes] = price_ids_attributes if has? 'adb:priceIDS'
          hash[:maturity] = maturity if has? 'adb:maturity'
          hash[:maturity_attributes] = maturity_attributes if has? 'adb:maturity'
          hash[:payment_type] = payment_type.to_h if has? 'adb:paymentType'
          hash[:agreement] = agreement if has? 'adb:agreement'
          hash[:agreement_attributes] = agreement_attributes if has? 'adb:agreement'
          hash[:number] = number.to_h if has? 'adb:number'
          hash[:ost1] = ost1 if has? 'adb:ost1'
          hash[:ost1_attributes] = ost1_attributes if has? 'adb:ost1'
          hash[:ost2] = ost2 if has? 'adb:ost2'
          hash[:ost2_attributes] = ost2_attributes if has? 'adb:ost2'
          hash[:function] = function if has? 'adb:function'
          hash[:function_attributes] = function_attributes if has? 'adb:function'
          hash[:personal_identification_number] = personal_identification_number if has? 'adb:personalIdentificationNumber'
          hash[:personal_identification_number_attributes] = personal_identification_number_attributes if has? 'adb:personalIdentificationNumber'
          hash[:salutation] = salutation if has? 'adb:salutation'
          hash[:salutation_attributes] = salutation_attributes if has? 'adb:salutation'
          hash[:sex] = sex if has? 'adb:sex'
          hash[:sex_attributes] = sex_attributes if has? 'adb:sex'
          hash[:date_of_birth] = date_of_birth if has? 'adb:dateOfBirth'
          hash[:date_of_birth_attributes] = date_of_birth_attributes if has? 'adb:dateOfBirth'
          hash[:p1] = p1 if has? 'adb:p1'
          hash[:p1_attributes] = p1_attributes if has? 'adb:p1'
          hash[:p2] = p2 if has? 'adb:p2'
          hash[:p2_attributes] = p2_attributes if has? 'adb:p2'
          hash[:p3] = p3 if has? 'adb:p3'
          hash[:p3_attributes] = p3_attributes if has? 'adb:p3'
          hash[:p4] = p4 if has? 'adb:p4'
          hash[:p4_attributes] = p4_attributes if has? 'adb:p4'
          hash[:p5] = p5 if has? 'adb:p5'
          hash[:p5_attributes] = p5_attributes if has? 'adb:p5'
          hash[:p6] = p6 if has? 'adb:p6'
          hash[:p6_attributes] = p6_attributes if has? 'adb:p6'
          hash[:message] = message if has? 'adb:message'
          hash[:message_attributes] = message_attributes if has? 'adb:message'
          hash[:note] = note if has? 'adb:note'
          hash[:note_attributes] = note_attributes if has? 'adb:note'
          hash[:int_note] = int_note if has? 'adb:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'adb:intNote'
          hash[:accounting_received_invoice] = accounting_received_invoice.to_h if has? 'adb:accountingReceivedInvoice'
          hash[:accounting_issued_invoice] = accounting_issued_invoice.to_h if has? 'adb:accountingIssuedInvoice'
          hash[:classification_vat_received_invoice] = classification_vat_received_invoice.to_h if has? 'adb:classificationVATReceivedInvoice'
          hash[:classification_vat_issued_invoice] = classification_vat_issued_invoice.to_h if has? 'adb:classificationVATIssuedInvoice'
          hash[:classification_kvdph_received_invoice] = classification_kvdph_received_invoice.to_h if has? 'adb:classificationKVDPHReceivedInvoice'
          hash[:classification_kvdph_issued_invoice] = classification_kvdph_issued_invoice.to_h if has? 'adb:classificationKVDPHIssuedInvoice'
          hash[:account_for_invoicing] = account_for_invoicing.to_h if has? 'adb:accountForInvoicing'
          hash[:responsible_person] = responsible_person.to_h if has? 'adb:responsiblePerson'
          hash[:tolerance_maturity] = tolerance_maturity if has? 'adb:toleranceMaturity'
          hash[:tolerance_maturity_attributes] = tolerance_maturity_attributes if has? 'adb:toleranceMaturity'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'adb:foreignCurrency'
          hash[:centre] = centre.to_h if has? 'adb:centre'
          hash[:activity] = activity.to_h if has? 'adb:activity'
          hash[:contract] = contract.to_h if has? 'adb:contract'
          hash[:turnover] = turnover if has? 'adb:turnover'
          hash[:turnover_attributes] = turnover_attributes if has? 'adb:turnover'
          hash[:turnover2] = turnover2 if has? 'adb:turnover2'
          hash[:turnover2_attributes] = turnover2_attributes if has? 'adb:turnover2'
          hash[:parameters] = parameters.map(&:to_h) if has? 'adb:parameters'
          hash[:ref_address] = ref_address.to_h if has? 'adb:refAddress'
          hash[:mark_record] = mark_record if has? 'adb:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'adb:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'adb:labels'

          hash
        end
      end
    end
  end
end