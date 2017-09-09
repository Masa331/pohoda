module Pohoda
  module Builder
    class InvoiceItem
      attr_accessor :id, :ids, :number_requested, :id, :text, :quantity, :unit, :coefficient, :pay_vat, :rate_vat, :percent_vat, :discount_percentage, :code
      attr_reader :home_currency, :foreign_currency, :stock_item

      def initialize(attributes = {})
        attributes ||= {}

        home_currency_attrs = attributes.delete :home_currency
        @home_currency = Pohoda::Builder::HomeCurrency.new(home_currency_attrs)

        foreign_currency_attrs = attributes.delete :foreign_currency
        @foreign_currency = Pohoda::Builder::ForeignCurrency.new(foreign_currency_attrs)

        stock_item_attrs = attributes.delete :stock_item
        @stock_item = Pohoda::Builder::StockItem.new(stock_item_attrs)

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
        doc.at_xpath('//inv:invoiceItem').children.each { |c| traverse_and_clean(c) }
        doc
      end

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].invoiceItem(namespaces) {
            xml['inv'].id id
            xml['inv'].text_ text
            xml['inv'].quantity quantity
            xml['inv'].unit unit
            xml['inv'].coefficient coefficient
            xml['inv'].payVAT pay_vat
            xml['inv'].rateVAT rate_vat
            xml['inv'].percentVAT percent_vat
            xml['inv'].discountPercentage discount_percentage
            xml << home_currency.doc.root.to_xml
            xml << foreign_currency.doc.root.to_xml
            xml << stock_item.doc.root.to_xml
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
