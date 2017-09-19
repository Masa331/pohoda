module Pohoda
  module Builder
    class SourceDocumentType
      include BaseBuilder

      attr_accessor :id, :number
      attr_accessor :namespace

      def initialize(attributes = {}, namespace = 'typ')
        @namespace = namespace
        super(attributes)
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml[namespace].sourceDocument(namespaces) {
            xml['typ'].id id
            xml['typ'].number number
          }
        end
      end
    end
  end
end
