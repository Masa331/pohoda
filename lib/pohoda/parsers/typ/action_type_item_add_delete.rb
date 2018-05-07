module Pohoda
  module Parsers
    module Typ
      class ActionTypeItemAddDelete
        include ParserCore::BaseParser

        def add
          at 'typ:add'
        end

        def delete
          submodel_at(Ftr::RequestItemType, 'typ:delete')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add if has? 'typ:add'
          hash[:delete] = delete.to_h_with_attrs if has? 'typ:delete'

          hash
        end
      end
    end
  end
end