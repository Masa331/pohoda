module Pohoda
  module Builder
    class EstablishmentType
      include BaseBuilder

      attr_accessor :company, :city, :street, :zip

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].establishment(namespaces) {
            xml['typ'].company company
            xml['typ'].city city
            xml['typ'].street street
            xml['typ'].zip zip
          }
        end
      end
    end
  end
end
