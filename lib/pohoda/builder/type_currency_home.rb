module Pohoda
  module Builder
    class TypeCurrencyHome
      include BaseBuilder

      attr_accessor :price_none, :price_low, :price_low_vat, :price_low_sum, :price_high, :price_high_vat, :price_high_sum, :price_3, :price_3_vat, :price_3_sum, :round

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].homeCurrency(namespaces) {
            xml['typ'].priceNone price_none
            xml['typ'].priceLow price_low
            xml['typ'].priceLowVAT price_low_vat
            xml['typ'].priceLowSum price_low_sum
            xml['typ'].priceHigh price_high
            xml['typ'].priceHighVAT price_high_vat
            xml['typ'].priceHighSum price_high_sum
            xml['typ'].price3 price_3
            xml['typ'].price3VAT price_3_vat
            xml['typ'].price3Sum price_3_sum
            xml << Pohoda::Builder::Round.new(round).doc.root.to_xml
          }
        end
      end
    end
  end
end
