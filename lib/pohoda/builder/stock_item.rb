module Pohoda
  module Builder
    class StockItem
      attr_accessor :serial_number
      attr_reader :store, :stock_item

      def initialize(attributes = {})
        attributes ||= {}

        stock_item_attrs = attributes.delete :stock_item
        @stock_item = Pohoda::Builder::StockItem2.new(stock_item_attrs)

        store_attrs = attributes.delete :store
        @store = Pohoda::Builder::Store.new(store_attrs)

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
        doc.at_xpath('//inv:stockItem').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].stockItem(namespaces) {
            xml['typ'].serialNumber serial_number
            xml << store.doc.root.to_xml
            xml << stock_item.doc.root.to_xml
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
