module Pohoda
  module Builder
    class DataPackItem
      def to_xml
        builder.to_xml
      end

      def builder
        namespaces = { 'xmlns:dat' => 'http://www.stormware.cz/schema/version_2/data.xsd' }
        attributes = { version: '2.0', id: '1' }

        Nokogiri::XML::Builder.new do |xml|
          xml['dat'].dataPackItem(attributes.merge(namespaces)) { }
        end
      end
    end
  end
end
