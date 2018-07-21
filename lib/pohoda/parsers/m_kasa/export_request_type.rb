module Pohoda
  module Parsers
    module MKasa
      class ExportRequestType
        include ParserCore::BaseParser

        def name
          at 'mKasa:name'
        end

        def name_attributes
          attributes_at 'mKasa:name'
        end

        def device_guid
          at 'mKasa:deviceGuid'
        end

        def device_guid_attributes
          attributes_at 'mKasa:deviceGuid'
        end

        def overwrite_device_guid
          at 'mKasa:overwriteDeviceGuid'
        end

        def overwrite_device_guid_attributes
          attributes_at 'mKasa:overwriteDeviceGuid'
        end

        def agenda
          at 'mKasa:agenda'
        end

        def agenda_attributes
          attributes_at 'mKasa:agenda'
        end

        def my_last_id
          at 'mKasa:myLastId'
        end

        def my_last_id_attributes
          attributes_at 'mKasa:myLastId'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:name] = name if has? 'mKasa:name'
          hash[:name_attributes] = name_attributes if has? 'mKasa:name'
          hash[:device_guid] = device_guid if has? 'mKasa:deviceGuid'
          hash[:device_guid_attributes] = device_guid_attributes if has? 'mKasa:deviceGuid'
          hash[:overwrite_device_guid] = overwrite_device_guid if has? 'mKasa:overwriteDeviceGuid'
          hash[:overwrite_device_guid_attributes] = overwrite_device_guid_attributes if has? 'mKasa:overwriteDeviceGuid'
          hash[:agenda] = agenda if has? 'mKasa:agenda'
          hash[:agenda_attributes] = agenda_attributes if has? 'mKasa:agenda'
          hash[:my_last_id] = my_last_id if has? 'mKasa:myLastId'
          hash[:my_last_id_attributes] = my_last_id_attributes if has? 'mKasa:myLastId'

          hash
        end
      end
    end
  end
end