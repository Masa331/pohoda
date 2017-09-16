module Pohoda
  module Builder
    class ForeignCurrency2
      include BaseBuilder

      attr_accessor :rate, :amount, :price_sum, :currency

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].foreignCurrency(namespaces) {
            xml['typ'].rate rate
            xml['typ'].amount amount
            xml['typ'].priceSum price_sum
            xml << Pohoda::Builder::Currency.new(currency).doc.root.to_xml
          }
        end
      end
    end
  end
end
