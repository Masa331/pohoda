module Pohoda
  module Builder
    class InvoiceHeaderType
      include BaseBuilder

      attr_accessor :invoice_type, :id, :ext_id, :invoice_type, :storno, :sphere_type, :sym_var, :sym_par, :date, :date_tax, :date_accounting, :date_khdph, :date_due, :date_application_vat, :accounting, :classification_vat, :number_khdph, :text, :my_identity, :order, :number_order, :date_order, :price_level, :payment_type, :account, :sym_const, :sym_spec, :payment_account, :payment_terminal, :centre, :activity, :contract, :reg_vat_in_eu, :moss, :evidentiary_resources_moss, :accounting_period_moss, :carrier, :note, :int_note, :number, :partner_identity, :date_delivery, :classification_kvdph, :number_kvdph, :original_document, :original_document_number, :reg_vat_in_eu

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoiceHeader(namespaces) {
            xml['inv'].id id
            xml << Pohoda::Builder::ExtIdType.new(ext_id, 'inv').doc.root.to_xml
            xml['inv'].invoiceType invoice_type
            xml['inv'].storno storno
            xml['inv'].sphereType sphere_type
            xml << Pohoda::Builder::Number.new(number).doc.root.to_xml
            xml['inv'].symVar sym_var
            xml['inv'].symPar sym_par
            xml['inv'].originalDocument original_document
            xml['inv'].originalDocumentNumber original_document_number
            xml['inv'].date date
            xml['inv'].dateTax date_tax
            xml['inv'].dateAccounting date_accounting
            xml['inv'].dateKHDPH date_khdph
            xml['inv'].dateDue date_due
            xml['inv'].dateApplicationVAT date_application_vat
            xml['inv'].dateDelivery date_delivery
            xml << Pohoda::Builder::AccountingType.new(accounting).doc.root.to_xml
            xml << Pohoda::Builder::ClassificationVatType.new(classification_vat).doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(classification_kvdph, 'classificationKVDPH', 'inv').doc.root.to_xml
            xml['inv'].numberKHDPH number_khdph
            xml['inv'].numberKVDPH number_kvdph
            xml['inv'].text_ text
            xml << Pohoda::Builder::Address.new(partner_identity).doc.root.to_xml
            xml << Pohoda::Builder::MyAddress.new(my_identity).doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(order, 'order', 'inv').doc.root.to_xml
            xml['inv'].numberOrder number_order
            xml['inv'].dateOrder date_order
            xml << Pohoda::Builder::RefType.new(price_level, 'priceLevel', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::PaymentType.new(payment_type).doc.root.to_xml
            xml << Pohoda::Builder::AccountType.new(account).doc.root.to_xml
            xml['inv'].symConst sym_const
            xml['inv'].symSpec sym_spec
            xml << Pohoda::Builder::MyGroupOfAccount.new(payment_account).doc.root.to_xml
            xml['inv'].paymentTerminal payment_terminal
            xml << Pohoda::Builder::RefType.new(centre, 'centre', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(activity, :activity, 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(contract, :contract, 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefTypeRegVatInEU.new(reg_vat_in_eu).doc.root.to_xml
            xml << Pohoda::Builder::MOSSType.new(moss).doc.root.to_xml
            xml << Pohoda::Builder::ResourceMOSSType.new(evidentiary_resources_moss).doc.root.to_xml
            xml['inv'].accountingPeriodMOSS accounting_period_moss
            xml << Pohoda::Builder::RefType.new(carrier, :carrier, 'inv').doc.root.to_xml

            xml['inv'].note note
            xml['inv'].intNote int_note
          }
        end
      end
    end
  end
end
