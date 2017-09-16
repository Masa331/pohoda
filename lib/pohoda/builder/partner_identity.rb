module Pohoda
  module Builder
    class PartnerIdentity
      include BaseBuilder

      attr_accessor :id, :ext_id, :address, :ship_to_address

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].partnerIdentity(namespaces) {
            xml['typ'].id id
            xml << Pohoda::Builder::ExtId.new(ext_id).doc.root.to_xml
            xml << Pohoda::Builder::Address.new(address).doc.root.to_xml
            xml << Pohoda::Builder::ShipToAddress.new(ship_to_address).doc.root.to_xml
          }
        end
      end
    end
  end
end
