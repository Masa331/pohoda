module Pohoda
  module Builder
    class Currency
      include BaseBuilder

      attr_accessor :id, :ids, :value_type

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].currency(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].valueType value_type
          }
        end
      end
    end
  end
end
