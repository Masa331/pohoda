module Pohoda
  module Parsers
    module MKasa
      class ImportResponseType
        include ParserCore::BaseParser

        def m_kasa_pack_num
          at 'mKasa:mKasaPackNum'
        end

        def m_kasa_pack_num_attributes
          attributes_at 'mKasa:mKasaPackNum'
        end

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

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:m_kasa_pack_num] = m_kasa_pack_num if has? 'mKasa:mKasaPackNum'
          hash[:m_kasa_pack_num_attributes] = m_kasa_pack_num_attributes if has? 'mKasa:mKasaPackNum'
          hash[:name] = name if has? 'mKasa:name'
          hash[:name_attributes] = name_attributes if has? 'mKasa:name'
          hash[:device_guid] = device_guid if has? 'mKasa:deviceGuid'
          hash[:device_guid_attributes] = device_guid_attributes if has? 'mKasa:deviceGuid'

          hash
        end
      end
    end
  end
end