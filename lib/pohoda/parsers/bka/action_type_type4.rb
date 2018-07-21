module Pohoda
  module Parsers
    module Bka
      class ActionTypeType4
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestExtIdActionType, 'bka:add')
        end

        def update
          submodel_at(Ftr::RequestExtIdActionType, 'bka:update')
        end

        def delete
          submodel_at(Ftr::RequestExtIdType, 'bka:delete')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'bka:add'
          hash[:update] = update.to_h if has? 'bka:update'
          hash[:delete] = delete.to_h if has? 'bka:delete'

          hash
        end
      end
    end
  end
end