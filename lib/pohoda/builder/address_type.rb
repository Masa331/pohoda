require 'pohoda/builder/base_builder'
require 'pohoda/builder/ref_type'

module Pohoda
  module Builder
    class AddressType
      include BaseBuilder

      attr_accessor :company, :name, :division, :street, :city, :zip, :ico, :dic, :ic_dph, :phone, :mobil_phone, :fax, :email, :country

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
            xml['typ'].icDph ic_dph
            xml['typ'].phone phone
            xml['typ'].mobilPhone mobil_phone
            xml['typ'].fax fax
            xml['typ'].email email
            xml << Pohoda::Builder::RefType.new(country, 'country', 'typ').doc.root.to_xml
          }
        end
      end
    end
  end
end
