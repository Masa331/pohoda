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

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'adb:add'
          hash[:update] = update.to_h if has? 'adb:update'
          hash[:delete] = delete.to_h if has? 'adb:delete'

          hash
        end
      end
    end
  end
end