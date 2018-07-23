module Pohoda
  module Builders
    module MKasa
      class ImportResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:mKasaPackNum', data[:m_kasa_pack_num], data[:m_kasa_pack_num_attributes]) if data.key? :m_kasa_pack_num
          root << build_element('mKasa:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('mKasa:deviceGuid', data[:device_guid], data[:device_guid_attributes]) if data.key? :device_guid

          root
        end
      end
    end
  end
end