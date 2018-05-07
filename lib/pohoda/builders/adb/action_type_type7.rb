module Pohoda
  module Builders
    module Adb
      class ActionTypeType7
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :add
            root << Ftr::RequestAddressBookActionType.new('adb:add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestAddressBookActionType.new('adb:update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestAddressBookType.new('adb:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end