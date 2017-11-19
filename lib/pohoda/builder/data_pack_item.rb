require 'pohoda/builder/base_builder'
require 'pohoda/builder/invoice_type'

module Pohoda
  module Builder
    class DataPackItem
      include BaseBuilder

      attr_accessor :invoice

      def builder
        namespaces = { 'xmlns:dat' => 'http://www.stormware.cz/schema/version_2/data.xsd' }
        attributes = { version: '2.0', id: '1' }

        Nokogiri::XML::Builder.new do |xml|
          xml['dat'].dataPackItem(attributes.merge(namespaces)) {
            xml << Pohoda::Builder::InvoiceType.new(invoice).doc.root.to_xml
          }
        end
      end
    end
  end
end
