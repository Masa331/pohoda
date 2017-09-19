module Pohoda
  module Builder
    class InvoiceItemType
      include BaseBuilder

      attr_accessor :id, :ids, :number_requested, :id, :text, :quantity, :unit, :coefficient, :pay_vat, :rate_vat, :percent_vat, :discount_percentage, :code, :home_currency, :foreign_currency, :stock_item, :guarantee, :guarantee_type, :link

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
            xml['inv'].guarantee guarantee
            xml['inv'].guaranteeType guarantee_type
            xml['inv'].code code
            xml << Pohoda::Builder::TypeCurrencyHomeItem.new(home_currency).doc.root.to_xml
            xml << Pohoda::Builder::TypeCurrencyForeignItem.new(foreign_currency).doc.root.to_xml
            xml << Pohoda::Builder::StockItemType.new(stock_item).doc.root.to_xml
            xml << Pohoda::Builder::LinkItemType.new(link).doc.root.to_xml
          }
        end
      end
    end
  end
end
