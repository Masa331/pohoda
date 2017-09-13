module Pohoda
  module Builder
    class DataPackItem

      attr_reader :invoice

      def initialize(attributes = {})
        invoice_attrs = attributes.delete :invoice
        @invoice = Pohoda::Builder::Invoice.new(invoice)
      end

      def to_xml
        doc.to_xml
      end

      def doc
        b = builder
        doc = b.doc
        doc.at_xpath('//dat:dataPackItem').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:dat' => 'http://www.stormware.cz/schema/version_2/data.xsd' }
        attributes = { version: '2.0', id: '1' }

        Nokogiri::XML::Builder.new do |xml|
          xml['dat'].dataPackItem(attributes.merge(namespaces)) {
            xml << invoice.doc.root.to_xml
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
