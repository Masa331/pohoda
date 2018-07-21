module Pohoda
  module Parsers
    module Csh
      class ActionTypeType3
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestExtIdActionType, 'csh:add')
        end

        def update
          submodel_at(Ftr::RequestExtIdActionType, 'csh:update')
        end

        def delete
          submodel_at(Ftr::RequestExtIdType, 'csh:delete')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'csh:add'
          hash[:update] = update.to_h if has? 'csh:update'
          hash[:delete] = delete.to_h if has? 'csh:delete'

          hash
        end
      end
    end
  end
end