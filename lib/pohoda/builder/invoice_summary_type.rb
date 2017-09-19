module Pohoda
  module Builder
    class InvoiceSummaryType
      include BaseBuilder

      attr_accessor :home_currency, :foreign_currency, :rounding_document, :rounding_vat, :calculate_vat

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].invoiceSummary(namespaces) {
            xml['inv'].roundingDocument rounding_document
            xml['inv'].roundingVAT rounding_vat
            xml << Pohoda::Builder::TypeCurrencyHome.new(home_currency).doc.root.to_xml
            xml << Pohoda::Builder::TypeCurrencyForeign.new(foreign_currency).doc.root.to_xml
          }
        end
      end
    end
  end
end
