require 'pohoda/builder/base_builder'
require 'pohoda/builder/ext_id_type'
require 'pohoda/builder/address_type'
require 'pohoda/builder/ship_to_address_type'

module Pohoda
  module Builder
    class Address
      include BaseBuilder

      attr_accessor :id, :ext_id, :address, :ship_to_address

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].partnerIdentity(namespaces) {
            xml['typ'].id id
            xml << Pohoda::Builder::ExtIdType.new(ext_id).doc.root.to_xml
            xml << Pohoda::Builder::AddressType.new(address).doc.root.to_xml
            xml << Pohoda::Builder::ShipToAddressType.new(ship_to_address).doc.root.to_xml
          }
        end
      end
    end
  end
end
