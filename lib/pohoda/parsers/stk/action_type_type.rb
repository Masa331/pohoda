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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add.to_h_with_attrs if has? 'stk:add'
          hash[:update] = update.to_h_with_attrs if has? 'stk:update'
          hash[:delete] = delete.to_h_with_attrs if has? 'stk:delete'

          hash
        end
      end
    end
  end
end