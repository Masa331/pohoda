module Pohoda
  module Builder
    class PartnerIdentity
      attr_accessor :id
      attr_reader :ext_id, :address, :ship_to_address

      def initialize(attributes = {})
        attributes ||= {}

        ext_id_attrs = attributes.delete :ext_id
        @ext_id = Pohoda::Builder::ExtId.new ext_id_attrs

        address_attrs = attributes.delete :address
        @address = Pohoda::Builder::Address.new address_attrs

        ship_to_address_attrs = attributes.delete :ship_to_address
        @ship_to_address = Pohoda::Builder::ShipToAddress.new ship_to_address_attrs

        attributes.each do |key, value|
          send("#{key}=", value)
        end
      end

      def to_xml
        doc.to_xml
      end

      def doc
        b = builder
        doc = b.doc
        doc.at_xpath('//inv:partnerIdentity').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].partnerIdentity(namespaces) {
            xml['typ'].id id
            xml << ext_id.doc.root.to_xml
            xml << address.doc.root.to_xml
            xml << ship_to_address.doc.root.to_xml
          }
        end
      end

      private

      def traverse_and_clean(kid)
        kid.children.map { |child| traverse_and_clean(child) }
        kid.remove if kid.content.empty?
      end
    end
  end
end
