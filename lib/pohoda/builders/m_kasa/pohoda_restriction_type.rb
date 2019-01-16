module Pohoda
  module Builders
    module MKasa
      class PohodaRestrictionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:lockPin', data[:lock_pin], data[:lock_pin_attributes]) if data.key? :lock_pin
          root << build_element('mKasa:administration', data[:administration], data[:administration_attributes]) if data.key? :administration
          root << build_element('mKasa:administrationPass', data[:administration_pass], data[:administration_pass_attributes]) if data.key? :administration_pass
          root << build_element('mKasa:changePrize', data[:change_prize], data[:change_prize_attributes]) if data.key? :change_prize
          root << build_element('mKasa:textItems', data[:text_items], data[:text_items_attributes]) if data.key? :text_items
          root << build_element('mKasa:delayedDocument', data[:delayed_document], data[:delayed_document_attributes]) if data.key? :delayed_document
          root << build_element('mKasa:changeEet', data[:change_eet], data[:change_eet_attributes]) if data.key? :change_eet
          root << build_element('mKasa:deleteRecords', data[:delete_records], data[:delete_records_attributes]) if data.key? :delete_records
          root << build_element('mKasa:exportXml', data[:export_xml], data[:export_xml_attributes]) if data.key? :export_xml
          root << build_element('mKasa:createBackup', data[:create_backup], data[:create_backup_attributes]) if data.key? :create_backup
          root << build_element('mKasa:restoreBackup', data[:restore_backup], data[:restore_backup_attributes]) if data.key? :restore_backup

          root
        end
      end
    end
  end
end