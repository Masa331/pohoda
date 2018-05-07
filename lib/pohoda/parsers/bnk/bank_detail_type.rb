module Pohoda
  module Parsers
    module Bnk
      class BankDetailType
        include ParserCore::BaseParser

        def bank_item
          array_of_at(Bnk::BankItemType, ['bnk:bankItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:bank_item] = bank_item.map(&:to_h_with_attrs) if has? 'bnk:bankItem'

          hash
        end
      end
    end
  end
end