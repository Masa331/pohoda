module Pohoda
  module Parsers
    module Ord
      class ActionTypeType2
        include ParserCore::BaseParser

        def add
          at 'ord:add'
        end

        def add_attributes
          attributes_at 'ord:add'
        end

        def delete
          submodel_at(Ftr::DeleteOrderType, 'ord:delete')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:add] = add if has? 'ord:add'
          hash[:add_attributes] = add_attributes if has? 'ord:add'
          hash[:delete] = delete.to_h if has? 'ord:delete'

          hash
        end
      end
    end
  end
end