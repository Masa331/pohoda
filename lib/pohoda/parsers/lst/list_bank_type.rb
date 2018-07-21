module Pohoda
  module Parsers
    module Lst
      class ListBankType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def bank
          array_of_at(Bnk::BankType, ['lst:bank'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:bank] = bank.map(&:to_h) if has? 'lst:bank'

          hash
          super.merge(hash)
        end
      end
    end
  end
end