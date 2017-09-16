module Pohoda
  module Builder
    class HomeCurrency
      include BaseBuilder

      attr_accessor :unit_price, :price, :price_vat, :price_sum

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].homeCurrency(namespaces) {
            xml['typ'].unitPrice unit_price
            xml['typ'].price price
            xml['typ'].priceVAT price_vat
            xml['typ'].priceSum price_sum
          }
        end
      end
    end
  end
end
