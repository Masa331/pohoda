module Pohoda
  module Builder
    class LinkItemType
      include BaseBuilder

      attr_accessor :source_agenda, :source_item_id

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].link(namespaces) {
            xml['typ'].sourceAgenda source_agenda
            xml['typ'].sourceItemId source_item_id
          }
        end
      end
    end
  end
end
