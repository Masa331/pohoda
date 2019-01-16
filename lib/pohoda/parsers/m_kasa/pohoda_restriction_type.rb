module Pohoda
  module Parsers
    module MKasa
      class PohodaRestrictionType
        include ParserCore::BaseParser

        def lock_pin
          at 'mKasa:lockPin'
        end

        def lock_pin_attributes
          attributes_at 'mKasa:lockPin'
        end

        def administration
          at 'mKasa:administration'
        end

        def administration_attributes
          attributes_at 'mKasa:administration'
        end

        def administration_pass
          at 'mKasa:administrationPass'
        end

        def administration_pass_attributes
          attributes_at 'mKasa:administrationPass'
        end

        def change_prize
          at 'mKasa:changePrize'
        end

        def change_prize_attributes
          attributes_at 'mKasa:changePrize'
        end

        def text_items
          at 'mKasa:textItems'
        end

        def text_items_attributes
          attributes_at 'mKasa:textItems'
        end

        def delayed_document
          at 'mKasa:delayedDocument'
        end

        def delayed_document_attributes
          attributes_at 'mKasa:delayedDocument'
        end

        def change_eet
          at 'mKasa:changeEet'
        end

        def change_eet_attributes
          attributes_at 'mKasa:changeEet'
        end

        def delete_records
          at 'mKasa:deleteRecords'
        end

        def delete_records_attributes
          attributes_at 'mKasa:deleteRecords'
        end

        def export_xml
          at 'mKasa:exportXml'
        end

        def export_xml_attributes
          attributes_at 'mKasa:exportXml'
        end

        def create_backup
          at 'mKasa:createBackup'
        end

        def create_backup_attributes
          attributes_at 'mKasa:createBackup'
        end

        def restore_backup
          at 'mKasa:restoreBackup'
        end

        def restore_backup_attributes
          attributes_at 'mKasa:restoreBackup'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:lock_pin] = lock_pin if has? 'mKasa:lockPin'
          hash[:lock_pin_attributes] = lock_pin_attributes if has? 'mKasa:lockPin'
          hash[:administration] = administration if has? 'mKasa:administration'
          hash[:administration_attributes] = administration_attributes if has? 'mKasa:administration'
          hash[:administration_pass] = administration_pass if has? 'mKasa:administrationPass'
          hash[:administration_pass_attributes] = administration_pass_attributes if has? 'mKasa:administrationPass'
          hash[:change_prize] = change_prize if has? 'mKasa:changePrize'
          hash[:change_prize_attributes] = change_prize_attributes if has? 'mKasa:changePrize'
          hash[:text_items] = text_items if has? 'mKasa:textItems'
          hash[:text_items_attributes] = text_items_attributes if has? 'mKasa:textItems'
          hash[:delayed_document] = delayed_document if has? 'mKasa:delayedDocument'
          hash[:delayed_document_attributes] = delayed_document_attributes if has? 'mKasa:delayedDocument'
          hash[:change_eet] = change_eet if has? 'mKasa:changeEet'
          hash[:change_eet_attributes] = change_eet_attributes if has? 'mKasa:changeEet'
          hash[:delete_records] = delete_records if has? 'mKasa:deleteRecords'
          hash[:delete_records_attributes] = delete_records_attributes if has? 'mKasa:deleteRecords'
          hash[:export_xml] = export_xml if has? 'mKasa:exportXml'
          hash[:export_xml_attributes] = export_xml_attributes if has? 'mKasa:exportXml'
          hash[:create_backup] = create_backup if has? 'mKasa:createBackup'
          hash[:create_backup_attributes] = create_backup_attributes if has? 'mKasa:createBackup'
          hash[:restore_backup] = restore_backup if has? 'mKasa:restoreBackup'
          hash[:restore_backup_attributes] = restore_backup_attributes if has? 'mKasa:restoreBackup'

          hash
        end
      end
    end
  end
end