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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add.to_h_with_attrs if has? 'ctg:add'
          hash[:update] = update.to_h_with_attrs if has? 'ctg:update'

          hash
        end
      end
    end
  end
end