module Pohoda
  module Parsers
    module Lst
      class ListBalanceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def balance
          array_of_at(Bal::BalanceType, ['lst:balance'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:balance] = balance.map(&:to_h) if has? 'lst:balance'

          hash
          super.merge(hash)
        end
      end
    end
  end
end