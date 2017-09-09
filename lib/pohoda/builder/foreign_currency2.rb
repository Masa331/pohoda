module Pohoda
  module Builder
    class ForeignCurrency2
      attr_accessor :rate, :amount, :price_sum
      attr_reader :currency

      def initialize(attributes = {})
        attributes ||= {}

        currency_attrs = attributes.delete :currency
        @currency = Pohoda::Builder::Currency.new(currency_attrs)

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
        doc.at_xpath('//inv:foreignCurrency').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].foreignCurrency(namespaces) {
            xml['typ'].rate rate
            xml['typ'].amount amount
            xml['typ'].priceSum price_sum
            xml << currency.doc.root.to_xml
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
