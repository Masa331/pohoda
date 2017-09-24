module Pohoda
  module Builder
    class AddressInternetType
      include BaseBuilder

      attr_accessor :company, :title, :surname, :name, :city, :street, :number, :zip, :ico, :dic, :ic_dph, :phone, :mobil_phone, :fax, :email, :www

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].address(namespaces) {
            xml['typ'].company company
            xml['typ'].title title
            xml['typ'].surname surname
            xml['typ'].name name
            xml['typ'].city city
            xml['typ'].street street
            xml['typ'].number number
            xml['typ'].zip zip
            xml['typ'].ico ico
            xml['typ'].dic dic
            xml['typ'].icDph ic_dph
            xml['typ'].phone phone
            xml['typ'].mobilPhone mobil_phone
            xml['typ'].fax fax
            xml['typ'].email email
            xml['typ'].www www
          }
        end
      end
    end
  end
end
