module Pohoda
  module Parsers
    module Adb
      class GDPRItemType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'adb:actionType')
        end

        def id
          at 'adb:id'
        end

        def id_attributes
          attributes_at 'adb:id'
        end

        def name
          submodel_at(Typ::RefTypeLong, 'adb:name')
        end

        def description
          at 'adb:description'
        end

        def description_attributes
          attributes_at 'adb:description'
        end

        def date_from
          at 'adb:dateFrom'
        end

        def date_from_attributes
          attributes_at 'adb:dateFrom'
        end

        def date_till
          at 'adb:dateTill'
        end

        def date_till_attributes
          attributes_at 'adb:dateTill'
        end

        def revoke_gdpr
          at 'adb:revokeGDPR'
        end

        def revoke_gdpr_attributes
          attributes_at 'adb:revokeGDPR'
        end

        def note
          at 'adb:note'
        end

        def note_attributes
          attributes_at 'adb:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'adb:actionType'
          hash[:id] = id if has? 'adb:id'
          hash[:id_attributes] = id_attributes if has? 'adb:id'
          hash[:name] = name.to_h if has? 'adb:name'
          hash[:description] = description if has? 'adb:description'
          hash[:description_attributes] = description_attributes if has? 'adb:description'
          hash[:date_from] = date_from if has? 'adb:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'adb:dateFrom'
          hash[:date_till] = date_till if has? 'adb:dateTill'
          hash[:date_till_attributes] = date_till_attributes if has? 'adb:dateTill'
          hash[:revoke_gdpr] = revoke_gdpr if has? 'adb:revokeGDPR'
          hash[:revoke_gdpr_attributes] = revoke_gdpr_attributes if has? 'adb:revokeGDPR'
          hash[:note] = note if has? 'adb:note'
          hash[:note_attributes] = note_attributes if has? 'adb:note'

          hash
        end
      end
    end
  end
end