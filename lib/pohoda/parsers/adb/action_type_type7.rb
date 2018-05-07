module Pohoda
  module Parsers
    module Adb
      class ActionTypeType7
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestAddressBookActionType, 'adb:add')
        end

        def update
          submodel_at(Ftr::RequestAddressBookActionType, 'adb:update')
        end

        def delete
          submodel_at(Ftr::RequestAddressBookType, 'adb:delete')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add.to_h_with_attrs if has? 'adb:add'
          hash[:update] = update.to_h_with_attrs if has? 'adb:update'
          hash[:delete] = delete.to_h_with_attrs if has? 'adb:delete'

          hash
        end
      end
    end
  end
end