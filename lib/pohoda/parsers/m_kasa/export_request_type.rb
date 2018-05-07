module Pohoda
  module Parsers
    module MKasa
      class ExportRequestType
        include ParserCore::BaseParser

        def name
          at 'mKasa:name'
        end

        def device_guid
          at 'mKasa:deviceGuid'
        end

        def overwrite_device_guid
          at 'mKasa:overwriteDeviceGuid'
        end

        def agenda
          at 'mKasa:agenda'
        end

        def my_last_id
          at 'mKasa:myLastId'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:name] = name if has? 'mKasa:name'
          hash[:device_guid] = device_guid if has? 'mKasa:deviceGuid'
          hash[:overwrite_device_guid] = overwrite_device_guid if has? 'mKasa:overwriteDeviceGuid'
          hash[:agenda] = agenda if has? 'mKasa:agenda'
          hash[:my_last_id] = my_last_id if has? 'mKasa:myLastId'

          hash
        end
      end
    end
  end
end