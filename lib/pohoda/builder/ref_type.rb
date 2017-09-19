module Pohoda
  module Builder
    class RefType
      include BaseBuilder

      attr_accessor :id, :ids, :value_type
      attr_accessor :element_name, :namespace

      def initialize(attributes = {}, element_name, namespace)
        @element_name = element_name
        @namespace = namespace
        super(attributes)
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml[namespace].send(element_name, namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].valueType value_type
          }
        end
      end
    end
  end
end
