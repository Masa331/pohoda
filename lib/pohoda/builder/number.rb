module Pohoda
  module Builder
    class Number
      include BaseBuilder

      attr_accessor :id, :ids, :number_requested

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].number(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].numberRequested number_requested
          }
        end
      end
    end
  end
end
