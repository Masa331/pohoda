module Pohoda
  module Builder
    class StockItem2
      include BaseBuilder

      attr_accessor :id, :ids, :ean, :ext_id

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].stockItem(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].EAN ean
            xml << Pohoda::Builder::ExtId.new(ext_id).doc.root.to_xml
          }
        end
      end
    end
  end
end
