require 'pohoda/builder/base_builder'

module Pohoda
  module Builder
    class Store
      include BaseBuilder

      attr_accessor :id, :ids, :value_type

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].store(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].value_type value_type
          }
        end
      end
    end
  end
end
