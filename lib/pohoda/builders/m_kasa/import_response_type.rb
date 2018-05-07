module Pohoda
  module Builders
    module MKasa
      class ImportResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:mKasaPackNum', data[:m_kasa_pack_num]) if data.key? :m_kasa_pack_num
          root << build_element('mKasa:name', data[:name]) if data.key? :name
          root << build_element('mKasa:deviceGuid', data[:device_guid]) if data.key? :device_guid

          root
        end
      end
    end
  end
end