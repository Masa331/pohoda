module Pohoda
  module Builders
    module MKasa
      class ExportRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('mKasa:deviceGuid', data[:device_guid], data[:device_guid_attributes]) if data.key? :device_guid
          root << build_element('mKasa:overwriteDeviceGuid', data[:overwrite_device_guid], data[:overwrite_device_guid_attributes]) if data.key? :overwrite_device_guid
          root << build_element('mKasa:agenda', data[:agenda], data[:agenda_attributes]) if data.key? :agenda
          root << build_element('mKasa:myLastId', data[:my_last_id], data[:my_last_id_attributes]) if data.key? :my_last_id

          root
        end
      end
    end
  end
end