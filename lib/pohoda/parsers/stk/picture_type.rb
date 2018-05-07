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

        def filepath
          at 'stk:filepath'
        end

        def description
          at 'stk:description'
        end

        def order
          at 'stk:order'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'stk:actionType'
          hash[:id] = id if has? 'stk:id'
          hash[:filepath] = filepath if has? 'stk:filepath'
          hash[:description] = description if has? 'stk:description'
          hash[:order] = order if has? 'stk:order'

          hash
        end
      end
    end
  end
end