module Pohoda
  module Parsers
    module Adb
      class AddressbookGDPRType
        include ParserCore::BaseParser

        def restrict_processing
          at 'adb:restrictProcessing'
        end

        def restrict_processing_attributes
          attributes_at 'adb:restrictProcessing'
        end

        def date_sale
          at 'adb:dateSale'
        end

        def date_sale_attributes
          attributes_at 'adb:dateSale'
        end

        def date_pre_sale
          at 'adb:datePreSale'
        end

        def date_pre_sale_attributes
          attributes_at 'adb:datePreSale'
        end

        def date_after_sale
          at 'adb:dateAfterSale'
        end

        def date_after_sale_attributes
          attributes_at 'adb:dateAfterSale'
        end

        def gdpr_items
          array_of_at(Adb::GDPRItemType, ['adb:GDPRItems', 'adb:GDPRItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:restrict_processing] = restrict_processing if has? 'adb:restrictProcessing'
          hash[:restrict_processing_attributes] = restrict_processing_attributes if has? 'adb:restrictProcessing'
          hash[:date_sale] = date_sale if has? 'adb:dateSale'
          hash[:date_sale_attributes] = date_sale_attributes if has? 'adb:dateSale'
          hash[:date_pre_sale] = date_pre_sale if has? 'adb:datePreSale'
          hash[:date_pre_sale_attributes] = date_pre_sale_attributes if has? 'adb:datePreSale'
          hash[:date_after_sale] = date_after_sale if has? 'adb:dateAfterSale'
          hash[:date_after_sale_attributes] = date_after_sale_attributes if has? 'adb:dateAfterSale'
          hash[:gdpr_items] = gdpr_items.map(&:to_h) if has? 'adb:GDPRItems'

          hash
        end
      end
    end
  end
end