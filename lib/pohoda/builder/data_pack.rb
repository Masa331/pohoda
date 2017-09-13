module Pohoda
  module Builder
    class DataPack
      attr_accessor :data_pack_items

      def initialize
        @data_pack_items = []
      end

      def initialize(attributes = {})
        attributes ||= {}

        items_attrs = attributes.delete(:data_pack_items) || []
        @data_pack_items = items_attrs.map { |attrs| Pohoda::Builder::DataPackItem.new(attrs) }
      end

      def to_xml
        doc.to_xml
      end

      def doc
        b = builder
        doc = b.doc
        doc.at_xpath('//dat:dataPack').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:dat' => 'http://www.stormware.cz/schema/version_2/data.xsd',
                       'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }
        attributes = { application: 'damedata.cz', version: '2.0', ico: '00000001', note: 'Exportovano z aplikace damedata.cz', id: '1' }

        Nokogiri::XML::Builder.new do |xml|
          xml['dat'].dataPack(attributes.merge(namespaces)) {
            data_pack_items.each do |item|
              xml << item.doc.root.to_xml
            end
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
