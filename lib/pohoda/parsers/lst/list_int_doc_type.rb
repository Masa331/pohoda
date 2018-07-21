module Pohoda
  module Parsers
    module Lst
      class ListIntDocType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def int_doc
          array_of_at(Int::IntDocType, ['lst:intDoc'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:int_doc] = int_doc.map(&:to_h) if has? 'lst:intDoc'

          hash
          super.merge(hash)
        end
      end
    end
  end
end