module Pohoda
  module Parsers
    module Bnk
      class StatementNumberType
        include ParserCore::BaseParser

        def statement_number
          at 'bnk:statementNumber'
        end

        def number_movement
          at 'bnk:numberMovement'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:statement_number] = statement_number if has? 'bnk:statementNumber'
          hash[:number_movement] = number_movement if has? 'bnk:numberMovement'

          hash
        end
      end
    end
  end
end