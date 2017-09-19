module Pohoda
  module Builder
    class ClassificationVatType
      include BaseBuilder

      attr_accessor :id, :ids, :classification_vat_type

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].classificationVAT(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].classificationVATType classification_vat_type
          }
        end
      end
    end
  end
end
