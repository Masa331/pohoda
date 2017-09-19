module Pohoda
  module Builder
    class AccountType
      include BaseBuilder

      attr_accessor :id, :ids, :account_no, :bank_code

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].account(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].accountNo account_no
            xml['typ'].bankCode bank_code
          }
        end
      end
    end
  end
end
