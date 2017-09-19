module Pohoda
  module Builder
    class InvoiceAdvancePaymentItemType
      include BaseBuilder

      attr_accessor :id, :source_document, :quantity, :pay_vat, :rate_vat, :percent_vat, :discount_percentage, :home_currency, :foreign_currency, :note, :accounting, :classification_vat, :classification_kvdph, :centre, :activity, :contract, :voucher_eet

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].invoiceAdvancePaymentItem(namespaces) {
            xml['inv'].id id
            xml['inv'].quantity quantity
            xml['inv'].payVAT pay_vat
            xml['inv'].rateVAT rate_vat
            xml << Pohoda::Builder::TypeCurrencyHomeItem2.new(home_currency).doc.root.to_xml
            xml << Pohoda::Builder::SourceDocumentType.new(source_document, 'inv').doc.root.to_xml
          }
        end
      end
    end
  end
end
