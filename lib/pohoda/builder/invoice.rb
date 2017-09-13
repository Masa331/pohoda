module Pohoda
  module Builder
    class Invoice
      attr_accessor :invoice_type, :id, :ext_id, :invoice_type, :storno, :sphere_type, :sym_var, :sym_par, :date, :date_tax, :date_accounting, :date_khdph, :date_due, :date_application_vat, :accounting, :classification_vat, :number_khdph, :text, :my_identity, :order, :number_order, :date_order, :price_level, :payment_type, :account, :sym_const, :sym_spec, :payment_account, :payment_terminal, :centre, :activity, :contract, :reg_vat_in_eu, :moss, :evidentiary_resource_moss, :accounting_period_moss, :carrier, :note, :int_note, :rounding_document, :rounding_vat, :calculate_vat

      attr_reader :number, :partner_identity, :items, :home_currency, :foreign_currency

      def initialize(attributes = {})
        attributes ||= {}

        number_attrs = attributes.delete :number
        @number = Pohoda::Builder::Number.new(number_attrs)

        partner_attrs = attributes.delete :partner_identity
        @partner_identity = Pohoda::Builder::PartnerIdentity.new(partner_attrs)

        items_attrs = attributes.delete(:items) || []
        @items = items_attrs.map { |attrs| Pohoda::Builder::InvoiceItem.new(attrs) }

        home_currency_attrs = attributes.delete(:home_currency)
        @home_currency = Pohoda::Builder::HomeCurrency2.new(home_currency_attrs)

        foreign_currency_attrs = attributes.delete(:foreign_currency)
        @foreign_currency = Pohoda::Builder::ForeignCurrency2.new(foreign_currency_attrs)

        attributes.each do |key, value|
          send("#{key}=", value)
        end
      end

      def to_xml
        doc.to_xml
      end

      def doc
        b = builder
        doc = b.doc
        doc.at_xpath('//inv:invoice').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }
        attributes = { version: '2.0' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoice(attributes.merge(namespaces)) {
            xml['inv'].invoiceHeader {
              xml['inv'].invoiceType invoice_type
              xml << number.doc.root.to_xml
              xml['inv'].numberOrder number_order
              xml['inv'].symVar sym_var
              xml['inv'].date date
              xml['inv'].dateTax date_tax
              xml['inv'].dateDue date_due
              xml << partner_identity.doc.root.to_xml
            }
            xml['inv'].invoiceDetail {
              items.each do |item|
                xml << item.doc.root.to_xml
              end
            }
            xml['inv'].invoiceSummary {
              xml['inv'].roundingDocument rounding_document
              xml << home_currency.doc.root.to_xml
              xml << foreign_currency.doc.root.to_xml
            }
          }
        end
      end

      private

      def traverse_and_clean(kid)
        kid.children.map { |child| traverse_and_clean(child) }
        kid.remove if kid.content.empty?
      end
    end
  end
end
