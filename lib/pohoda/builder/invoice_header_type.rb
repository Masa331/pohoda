module Pohoda
  module Builder
    class InvoiceHeaderType
      include BaseBuilder

      attr_accessor :invoice_type, :id, :ext_id, :invoice_type, :storno, :sphere_type, :sym_var, :sym_par, :date, :date_tax, :date_accounting, :date_khdph, :date_due, :date_application_vat, :accounting, :classification_vat, :number_khdph, :text, :my_identity, :order, :number_order, :date_order, :price_level, :payment_type, :account, :sym_const, :sym_spec, :payment_account, :payment_terminal, :centre, :activity, :contract, :reg_vat_in_eu, :moss, :evidentiary_resource_moss, :accounting_period_moss, :carrier, :note, :int_note, :number, :partner_identity

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoiceHeader(namespaces) {
            xml['inv'].invoiceType invoice_type
            xml << Pohoda::Builder::Number.new(number).doc.root.to_xml
            xml['inv'].numberOrder number_order
            xml['inv'].dateOrder date_order
            xml['inv'].symVar sym_var
            xml['inv'].date date
            xml['inv'].dateTax date_tax
            xml['inv'].dateDue date_due
            xml['inv'].dateAccounting date_accounting
            xml << Pohoda::Builder::ClassificationVatType.new(classification_vat).doc.root.to_xml
            xml << Pohoda::Builder::AccountingType.new(accounting).doc.root.to_xml
            xml['inv'].text_ text
            xml << Pohoda::Builder::Address.new(partner_identity).doc.root.to_xml
            xml << Pohoda::Builder::PaymentType.new(payment_type).doc.root.to_xml
            xml << Pohoda::Builder::MyGroupOfAccount.new(payment_account).doc.root.to_xml
            xml << Pohoda::Builder::AccountType.new(account).doc.root.to_xml
            xml['inv'].note note
            xml['inv'].intNote int_note
            xml << Pohoda::Builder::RefType.new(centre, :centre, 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(activity, :activity, 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(contract, :contract, 'inv').doc.root.to_xml
          }
        end
      end
    end
  end
end
