module Pohoda
  module Builder
    class ShipToAddress
      include BaseBuilder

      attr_accessor :id, :company, :division, :name, :city, :street, :zip, :phone, :email, :default_ship_to_address, :country

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
            xml << Pohoda::Builder::Country.new(country).doc.root.to_xml
          }
        end
      end
    end
  end
end
