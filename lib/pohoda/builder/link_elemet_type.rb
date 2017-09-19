module Pohoda
  module Builder
    class LinkElemetType
      include BaseBuilder

      attr_accessor :source_agenda, :source_document

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['typ'].link(namespaces) {
            xml['typ'].sourceAgenda source_agenda
            xml << Pohoda::Builder::SourceDocumentType.new(source_document).doc.root.to_xml
          }
        end
      end
    end
  end
end
