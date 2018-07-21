module Pohoda
  module Parsers
    module Stk
      class PictureType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'stk:actionType')
        end

        def id
          at 'stk:id'
        end

        def id_attributes
          attributes_at 'stk:id'
        end

        def filepath
          at 'stk:filepath'
        end

        def filepath_attributes
          attributes_at 'stk:filepath'
        end

        def description
          at 'stk:description'
        end

        def description_attributes
          attributes_at 'stk:description'
        end

        def order
          at 'stk:order'
        end

        def order_attributes
          attributes_at 'stk:order'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'stk:actionType'
          hash[:id] = id if has? 'stk:id'
          hash[:id_attributes] = id_attributes if has? 'stk:id'
          hash[:filepath] = filepath if has? 'stk:filepath'
          hash[:filepath_attributes] = filepath_attributes if has? 'stk:filepath'
          hash[:description] = description if has? 'stk:description'
          hash[:description_attributes] = description_attributes if has? 'stk:description'
          hash[:order] = order if has? 'stk:order'
          hash[:order_attributes] = order_attributes if has? 'stk:order'

          hash
        end
      end
    end
  end
end