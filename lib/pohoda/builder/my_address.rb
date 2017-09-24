module Pohoda
  module Builder
    class MyAddress
      include BaseBuilder

      attr_accessor :address, :establishment

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].myIdentity(namespaces) {
            xml << Pohoda::Builder::AddressInternetType.new(address).doc.root.to_xml
            xml << Pohoda::Builder::EstablishmentType.new(establishment).doc.root.to_xml
          }
        end
      end
    end
  end
end
