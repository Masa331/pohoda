module Pohoda
  module Parsers
    module Lst
      class ListIntDocType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def int_doc
          array_of_at(Int::IntDocType, ['lst:intDoc'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_doc] = int_doc.map(&:to_h_with_attrs) if has? 'lst:intDoc'

          hash
          super.merge(hash)
        end
      end
    end
  end
end