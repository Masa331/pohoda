module Pohoda
  module Builder
    class StockItemType
      include BaseBuilder

      attr_accessor :serial_number, :store, :stock_item

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].stockItem(namespaces) {
            xml['typ'].serialNumber serial_number
            xml << Pohoda::Builder::RefType.new(store, :store, 'typ').doc.root.to_xml
            xml << Pohoda::Builder::StockRefType.new(stock_item).doc.root.to_xml
          }
        end
      end
    end
  end
end
