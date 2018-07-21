module Pohoda
  module Parsers
    module Int
      class IntDocDetailType
        include ParserCore::BaseParser

        def int_doc_item
          array_of_at(Int::IntDocItemType, ['int:intDocItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:int_doc_item] = int_doc_item.map(&:to_h) if has? 'int:intDocItem'

          hash
        end
      end
    end
  end
end