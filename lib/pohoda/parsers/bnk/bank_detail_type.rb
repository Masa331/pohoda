module Pohoda
  module Parsers
    module Bnk
      class BankDetailType
        include ParserCore::BaseParser

        def bank_item
          array_of_at(Bnk::BankItemType, ['bnk:bankItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:bank_item] = bank_item.map(&:to_h) if has? 'bnk:bankItem'

          hash
        end
      end
    end
  end
end