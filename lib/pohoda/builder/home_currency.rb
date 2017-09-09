module Pohoda
  module Builder
    class HomeCurrency
      attr_accessor :unit_price, :price, :price_vat, :price_sum

      def initialize(attributes = {})
        attributes ||= {}
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
        doc.at_xpath('//inv:homeCurrency').children.each { |c| traverse_and_clean(c) }
        doc
      end

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

      private

      def traverse_and_clean(kid)
        kid.children.map { |child| traverse_and_clean(child) }
        kid.remove if kid.content.empty?
      end
    end
  end
end
