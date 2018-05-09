module Pohoda
  module Parsers
    module Typ
      class LinkItemType
        include ParserCore::BaseParser

        def source_agenda
          at 'typ:sourceAgenda'
        end

        def source_item_id
          at 'typ:sourceItemId'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_item_id] = source_item_id if has? 'typ:sourceItemId'

          hash
        end
      end
    end
  end
end