module Pohoda
  module Builder
    class StockItem2
      attr_accessor :id, :ids, :ean
      attr_reader :ext_id

      def initialize(attributes = {})
        attributes ||= {}

        ext_id_attrs = attributes.delete :ext_id
        @ext_id = Pohoda::Builder::ExtId.new(ext_id_attrs)

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
        doc.at_xpath('//typ:stockItem').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].stockItem(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].EAN ean
            xml << ext_id.doc.root.to_xml
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
