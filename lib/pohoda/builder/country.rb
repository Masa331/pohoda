module Pohoda
  module Builder
    class Country
      attr_accessor :id, :ids, :value_type

      def initialize(attributes = {})
        attributes ||= {}
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
        doc.root.xpath('//typ:country').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].country(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].valueType value_type
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
