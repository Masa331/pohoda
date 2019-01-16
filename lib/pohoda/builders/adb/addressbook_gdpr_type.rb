module Pohoda
  module Builders
    module Adb
      class AddressbookGDPRType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('adb:restrictProcessing', data[:restrict_processing], data[:restrict_processing_attributes]) if data.key? :restrict_processing
          root << build_element('adb:dateSale', data[:date_sale], data[:date_sale_attributes]) if data.key? :date_sale
          root << build_element('adb:datePreSale', data[:date_pre_sale], data[:date_pre_sale_attributes]) if data.key? :date_pre_sale
          root << build_element('adb:dateAfterSale', data[:date_after_sale], data[:date_after_sale_attributes]) if data.key? :date_after_sale
          if data.key? :gdpr_items
            element = Ox::Element.new('adb:GDPRItems')
            data[:gdpr_items].each { |i| element << Adb::GDPRItemType.new('adb:GDPRItem', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end