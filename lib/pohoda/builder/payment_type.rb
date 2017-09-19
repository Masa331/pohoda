module Pohoda
  module Builder
    class PaymentType
      include BaseBuilder

      attr_accessor :id, :ids, :payment_type

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].paymentType(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].paymentType payment_type;
          }
        end
      end
    end
  end
end
