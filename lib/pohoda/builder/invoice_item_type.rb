require 'pohoda/builder/base_builder'
require 'pohoda/builder/link_item_type'
require 'pohoda/builder/type_currency_home_item'
require 'pohoda/builder/type_currency_foreign_item'
require 'pohoda/builder/stock_item_type'
require 'pohoda/builder/ref_type'
require 'pohoda/builder/classification_vat_type'

module Pohoda
  module Builder
    class InvoiceItemType
      include BaseBuilder

      attr_accessor :id, :ids, :number_requested, :id, :text, :quantity, :unit, :coefficient, :pay_vat, :rate_vat, :percent_vat, :discount_percentage, :code, :home_currency, :foreign_currency, :stock_item, :guarantee, :guarantee_type, :link, :note, :accounting, :classification_vat, :classification_kvdph, :centre, :activity, :contract, :expiration_date

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].invoiceItem(namespaces) {
            xml << Pohoda::Builder::LinkItemType.new(link).doc.root.to_xml
            xml['inv'].id id
            xml['inv'].text_ text
            xml['inv'].quantity quantity
            xml['inv'].unit unit
            xml['inv'].coefficient coefficient
            xml['inv'].payVAT pay_vat
            xml['inv'].rateVAT rate_vat
            xml['inv'].percentVAT percent_vat
            xml['inv'].discountPercentage discount_percentage
            xml << Pohoda::Builder::TypeCurrencyHomeItem.new(home_currency).doc.root.to_xml
            xml << Pohoda::Builder::TypeCurrencyForeignItem.new(foreign_currency).doc.root.to_xml
            xml['inv'].note note
            xml['inv'].code code
            xml['inv'].guarantee guarantee
            xml['inv'].guaranteeType guarantee_type
            xml << Pohoda::Builder::StockItemType.new(stock_item).doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(accounting, 'accounting', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::ClassificationVatType.new(classification_vat).doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(classification_kvdph, 'classificationKVDPH', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(centre, 'centre', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(activity, 'activity', 'inv').doc.root.to_xml
            xml << Pohoda::Builder::RefType.new(contract, 'contract', 'inv').doc.root.to_xml
            xml['inv'].expirationDate expiration_date
          }
        end
      end
    end
  end
end
