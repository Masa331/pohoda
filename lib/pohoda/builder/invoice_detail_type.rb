module Pohoda
  module Builder
    class InvoiceDetailType
      include BaseBuilder

      def initialize(attributes = {})
        attributes ||= {}
        attributes[:items] ||= []
        attributes[:advance_payments] ||= []

        super
      end

      attr_accessor :items, :advance_payments

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoiceDetail(namespaces) {
            items.each do |item|
              xml << Pohoda::Builder::InvoiceItemType.new(item).doc.root.to_xml
            end

            advance_payments.each do |item|
              xml << Pohoda::Builder::InvoiceAdvancePaymentItemType.new(item).doc.root.to_xml
            end
          }
        end
      end
    end
  end
end
