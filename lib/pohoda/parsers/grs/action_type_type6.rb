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

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'grs:add'
          hash[:update] = update.to_h if has? 'grs:update'
          hash[:delete] = delete.to_h if has? 'grs:delete'

          hash
        end
      end
    end
  end
end