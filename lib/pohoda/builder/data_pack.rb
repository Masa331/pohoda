module Pohoda
  module Builder
    class DataPack
      attr_accessor :data_pack_items

      def initialize
        @data_pack_items = []
      end

      def to_xml
        builder.to_xml
      end

      def builder
        namespaces = { 'xmlns:dat' => 'http://www.stormware.cz/schema/version_2/data.xsd',
                       'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }
        attributes = { application: 'damedata.cz', version: '2.0', ico: '00000001', note: 'Exportovano z aplikace damedata.cz', id: '1' }

        Nokogiri::XML::Builder.new do |xml|
          xml['dat'].dataPack(attributes.merge(namespaces)) {
            data_pack_items.each do |item|
              xml << item.builder.doc.root.to_xml
            end
          }
        end
      end
    end
  end
end
