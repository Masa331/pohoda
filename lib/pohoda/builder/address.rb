module Pohoda
  module Builder
    class Address
      attr_accessor :company, :name, :division, :street, :city, :zip, :ico, :dic, :ic_dph, :phone, :mobile_phone, :fax, :email

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
        doc.at_xpath('//typ:address').children.each { |c| traverse_and_clean(c) }
        doc
      end

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
