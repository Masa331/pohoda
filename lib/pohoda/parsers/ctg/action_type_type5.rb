module Pohoda
  module Parsers
    module Ctg
      class ActionTypeType5
        include ParserCore::BaseParser

        def add
          submodel_at(Ftr::RequestCategoryActionType, 'ctg:add')
        end

        def update
          submodel_at(Ftr::RequestCategoryActionType, 'ctg:update')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add.to_h if has? 'ctg:add'
          hash[:update] = update.to_h if has? 'ctg:update'

          hash
        end
      end
    end
  end
end