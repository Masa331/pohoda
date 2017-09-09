module Pohoda
  module Builder
    class ShipToAddress
      attr_accessor :id, :company, :division, :name, :city, :street, :zip, :phone, :email, :default_ship_to_address

      attr_reader :country

      def initialize(attributes = {})
        attributes ||= {}

        country_attrs = attributes.delete :country
        @country = Pohoda::Builder::Country.new country_attrs

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
        doc.at_xpath('//typ:shipToAddress').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].shipToAddress(namespaces) {
            xml['typ'].id id
            xml['typ'].company company
            xml['typ'].division division
            xml['typ'].name name
            xml['typ'].city city
            xml['typ'].street street
            xml['typ'].zip zip
            xml['typ'].phone phone
            xml['typ'].email email
            xml['typ'].defaultShipAddress default_ship_to_address
            xml << country.doc.root.to_xml
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
