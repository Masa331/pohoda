module Pohoda
  module Parsers
    module Lst
      class ListBalanceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def balance
          array_of_at(Bal::BalanceType, ['lst:balance'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:balance] = balance.map(&:to_h_with_attrs) if has? 'lst:balance'

          hash
          super.merge(hash)
        end
      end
    end
  end
end