module Pohoda
  module Builder
    class Address
      include BaseBuilder

      attr_accessor :company, :name, :division, :street, :city, :zip, :ico, :dic, :ic_dph, :phone, :mobile_phone, :fax, :email, :country

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].address(namespaces) {
            xml['typ'].company company
            xml['typ'].name name
            xml['typ'].division division
            xml['typ'].street street
            xml['typ'].city city
            xml['typ'].zip zip
            xml['typ'].ico ico
            xml['typ'].dic dic
            xml['typ'].ic_dph ic_dph
            xml['typ'].phone phone
            xml['typ'].mobile_phone mobile_phone
            xml['typ'].fax fax
            xml['typ'].email email
            xml << Pohoda::Builder::Country.new(country).doc.root.to_xml
          }
        end
      end
    end
  end
end
