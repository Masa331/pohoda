module Pohoda
  module Parsers
    module Stk
      class ActionTypeType
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestStockActionType, 'stk:add')
        end

        def update
          submodel_at(Ftr::RequestStockActionType, 'stk:update')
        end

        def delete
          submodel_at(Ftr::RequestStockType, 'stk:delete')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'stk:add'
          hash[:update] = update.to_h if has? 'stk:update'
          hash[:delete] = delete.to_h if has? 'stk:delete'

          hash
        end
      end
    end
  end
end