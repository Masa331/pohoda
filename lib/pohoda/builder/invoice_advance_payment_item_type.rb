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
            xml << Pohoda::Builder::SourceDocumentType.new(source_document, 'inv').doc.root.to_xml
            xml['inv'].quantity quantity
            xml['inv'].payVAT pay_vat
            xml['inv'].rateVAT rate_vat
            xml['inv'].percentVAT percent_vat
            xml['inv'].discountPercentage discount_percentage
            xml << Pohoda::Builder::TypeCurrencyHomeItem2.new(home_currency, 'homeCurrency').doc.root.to_xml
            xml << Pohoda::Builder::TypeCurrencyHomeItem2.new(foreign_currency, 'foreignCurrency').doc.root.to_xml
            xml['inv'].note note
            xml << Pohoda::Builder::RefType.new(accounting, 'accounting', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::ClassificationVatType.new(classification_vat).doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(classification_kvdph, 'classificationKVDPH', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(centre, 'centre', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(activity, 'activity', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(contract, 'contract', 'inv').doc.root.to_xml
            xml['inv'].voucherEET voucher_eet
          }
        end
      end
    end
  end
end
