module Pohoda
  module Builder
    class ExtId
      include BaseBuilder

      attr_accessor :ids, :ex_system_name, :ex_system_text

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
    end
  end
end
