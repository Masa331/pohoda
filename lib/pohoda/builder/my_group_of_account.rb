module Pohoda
  module Builder
    class MyGroupOfAccount
      include BaseBuilder

      attr_accessor :account_no, :bank_code

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].paymentAccount(namespaces) {
            xml['typ'].accountNo account_no
            xml['typ'].bankCode bank_code
          }
        end
      end
    end
  end
end
