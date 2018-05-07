module Pohoda
  module Parsers
    module Typ
      class ActionTypeStockItem
        include ParserCore::BaseParser

        def add
          at 'typ:add'
        end

        def update
          submodel_at(Ftr::RequestStockType, 'typ:update')
        end

        def delete
          submodel_at(Ftr::RequestStockType, 'typ:delete')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add if has? 'typ:add'
          hash[:update] = update.to_h_with_attrs if has? 'typ:update'
          hash[:delete] = delete.to_h_with_attrs if has? 'typ:delete'

          hash
        end
      end
    end
  end
end