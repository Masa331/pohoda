module Pohoda
  module Builder
    class ExtId
      attr_accessor :ids, :ex_system_name, :ex_system_text

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
        doc.at_xpath('//typ:extId').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].extId(namespaces) {
            xml['typ'].ids ids
            xml['typ'].exSystemName ex_system_name
            xml['typ'].exSystemText ex_system_text
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
