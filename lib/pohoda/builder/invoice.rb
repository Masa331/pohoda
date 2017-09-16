module Pohoda
  module Builder
    class Invoice
      include BaseBuilder

      attr_accessor :invoice_type, :id, :ext_id, :invoice_type, :storno, :sphere_type, :sym_var, :sym_par, :date, :date_tax, :date_accounting, :date_khdph, :date_due, :date_application_vat, :accounting, :classification_vat, :number_khdph, :text, :my_identity, :order, :number_order, :date_order, :price_level, :payment_type, :account, :sym_const, :sym_spec, :payment_account, :payment_terminal, :centre, :activity, :contract, :reg_vat_in_eu, :moss, :evidentiary_resource_moss, :accounting_period_moss, :carrier, :note, :int_note, :rounding_document, :rounding_vat, :calculate_vat, :number, :partner_identity, :items, :home_currency, :foreign_currency

      def initialize(attributes = {})
        attributes ||= {}
        attributes[:items] ||= []

        super
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }
        attributes = { version: '2.0' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoice(attributes.merge(namespaces)) {
            xml['inv'].invoiceHeader {
              xml['inv'].invoiceType invoice_type
              xml << Pohoda::Builder::Number.new(number).doc.root.to_xml
              xml['inv'].numberOrder number_order
              xml['inv'].symVar sym_var
              xml['inv'].date date
              xml['inv'].dateTax date_tax
              xml['inv'].dateDue date_due
              xml << Pohoda::Builder::PartnerIdentity.new(partner_identity).doc.root.to_xml
            }
            xml['inv'].invoiceDetail {
              items.each do |item|
                xml << Pohoda::Builder::InvoiceItem.new(item).doc.root.to_xml
              end
            }
            xml['inv'].invoiceSummary {
              xml['inv'].roundingDocument rounding_document
              xml << Pohoda::Builder::HomeCurrency2.new(home_currency).doc.root.to_xml
              xml << Pohoda::Builder::ForeignCurrency2.new(foreign_currency).doc.root.to_xml
            }
          }
        end
      end
    end
  end
end
