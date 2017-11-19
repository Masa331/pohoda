require 'pohoda/builder/base_builder'
require 'pohoda/builder/ext_id_type'

module Pohoda
  module Builder
    class StockRefType
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
            xml << Pohoda::Builder::ExtIdType.new(ext_id).doc.root.to_xml
          }
        end
      end
    end
  end
end
