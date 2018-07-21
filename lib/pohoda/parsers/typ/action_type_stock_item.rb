module Pohoda
  module Parsers
    module Typ
      class ActionTypeStockItem
        include ParserCore::BaseParser

        def add
          at 'typ:add'
        end

        def add_attributes
          attributes_at 'typ:add'
        end

        def update
          submodel_at(Ftr::RequestStockType, 'typ:update')
        end

        def delete
          submodel_at(Ftr::RequestStockType, 'typ:delete')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add if has? 'typ:add'
          hash[:add_attributes] = add_attributes if has? 'typ:add'
          hash[:update] = update.to_h if has? 'typ:update'
          hash[:delete] = delete.to_h if has? 'typ:delete'

          hash
        end
      end
    end
  end
end