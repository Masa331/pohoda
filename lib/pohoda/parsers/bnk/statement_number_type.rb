module Pohoda
  module Parsers
    module Bnk
      class StatementNumberType
        include ParserCore::BaseParser

        def statement_number
          at 'bnk:statementNumber'
        end

        def statement_number_attributes
          attributes_at 'bnk:statementNumber'
        end

        def number_movement
          at 'bnk:numberMovement'
        end

        def number_movement_attributes
          attributes_at 'bnk:numberMovement'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:statement_number] = statement_number if has? 'bnk:statementNumber'
          hash[:statement_number_attributes] = statement_number_attributes if has? 'bnk:statementNumber'
          hash[:number_movement] = number_movement if has? 'bnk:numberMovement'
          hash[:number_movement_attributes] = number_movement_attributes if has? 'bnk:numberMovement'

          hash
        end
      end
    end
  end
end