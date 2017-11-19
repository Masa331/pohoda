require 'pohoda/builder/base_builder'

module Pohoda
  module Builder
    class ExtIdType
      include BaseBuilder

      attr_accessor :ids, :ex_system_name, :ex_system_text
      attr_accessor :namespace

      def initialize(attributes = {}, namespace = 'typ')
        @namespace = namespace
        super(attributes)
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml[namespace].extId(namespaces) {
            xml['typ'].ids ids
            xml['typ'].exSystemName ex_system_name
            xml['typ'].exSystemText ex_system_text
          }
        end
      end
    end
  end
end
