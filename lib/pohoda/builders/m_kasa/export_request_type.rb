module Pohoda
  module Builders
    module MKasa
      class ExportRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:name', data[:name]) if data.key? :name
          root << build_element('mKasa:deviceGuid', data[:device_guid]) if data.key? :device_guid
          root << build_element('mKasa:overwriteDeviceGuid', data[:overwrite_device_guid]) if data.key? :overwrite_device_guid
          root << build_element('mKasa:agenda', data[:agenda]) if data.key? :agenda
          root << build_element('mKasa:myLastId', data[:my_last_id]) if data.key? :my_last_id

          root
        end
      end
    end
  end
end