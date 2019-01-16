module Pohoda
  module Builders
    module Adb
      class GDPRItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('adb:actionType', data[:action_type]).builder
          end
          root << build_element('adb:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :name
            root << Typ::RefTypeLong.new('adb:name', data[:name]).builder
          end
          root << build_element('adb:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('adb:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('adb:dateTill', data[:date_till], data[:date_till_attributes]) if data.key? :date_till
          root << build_element('adb:revokeGDPR', data[:revoke_gdpr], data[:revoke_gdpr_attributes]) if data.key? :revoke_gdpr
          root << build_element('adb:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end