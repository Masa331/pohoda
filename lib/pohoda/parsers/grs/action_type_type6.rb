module Pohoda
  module Parsers
    module Grs
      class ActionTypeType6
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestGroupStocksActionType, 'grs:add')
        end

        def update
          submodel_at(Ftr::RequestGroupStocksActionType, 'grs:update')
        end

        def delete
          submodel_at(Ftr::RequestGroupStocksType, 'grs:delete')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add.to_h_with_attrs if has? 'grs:add'
          hash[:update] = update.to_h_with_attrs if has? 'grs:update'
          hash[:delete] = delete.to_h_with_attrs if has? 'grs:delete'

          hash
        end
      end
    end
  end
end