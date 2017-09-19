module Pohoda
  module Builder
    class InvoiceType
      include BaseBuilder

      def initialize(attributes = {})
        attributes ||= {}
        attributes[:links] ||= []

        super
      end

      attr_accessor :links, :invoice_header, :invoice_detail, :invoice_summary

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }
        attributes = { version: '2.0' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoice(attributes.merge(namespaces)) {
            xml['inv'].links {
              links.each do |item|
                xml << Pohoda::Builder::LinkElemetType.new(item).doc.root.to_xml
              end
            }
            xml << Pohoda::Builder::InvoiceHeaderType.new(invoice_header).doc.root.to_xml
            xml << Pohoda::Builder::InvoiceDetailType.new(invoice_detail).doc.root.to_xml
            xml << Pohoda::Builder::InvoiceSummaryType.new(invoice_summary).doc.root.to_xml
          }
        end
      end
    end
  end
end
