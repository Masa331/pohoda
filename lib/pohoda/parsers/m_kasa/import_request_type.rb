module Pohoda
  module Parsers
    module MKasa
      class ImportRequestType
        include ParserCore::BaseParser

        def m_kasa_pack_num
          at 'mKasa:mKasaPackNum'
        end

        def name
          at 'mKasa:name'
        end

        def device_guid
          at 'mKasa:deviceGuid'
        end

        def overwrite_device_guid
          at 'mKasa:overwriteDeviceGuid'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:m_kasa_pack_num] = m_kasa_pack_num if has? 'mKasa:mKasaPackNum'
          hash[:name] = name if has? 'mKasa:name'
          hash[:device_guid] = device_guid if has? 'mKasa:deviceGuid'
          hash[:overwrite_device_guid] = overwrite_device_guid if has? 'mKasa:overwriteDeviceGuid'

          hash
        end
      end
    end
  end
end