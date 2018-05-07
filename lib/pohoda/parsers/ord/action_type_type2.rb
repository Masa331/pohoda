module Pohoda
  module Parsers
    module Ord
      class ActionTypeType2
        include ParserCore::BaseParser

        def add
          at 'ord:add'
        end

        def delete
          submodel_at(Ftr::DeleteOrderType, 'ord:delete')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:add] = add if has? 'ord:add'
          hash[:delete] = delete.to_h_with_attrs if has? 'ord:delete'

          hash
        end
      end
    end
  end
end