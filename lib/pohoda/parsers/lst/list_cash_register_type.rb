module Pohoda
  module Parsers
    module Lst
      class ListCashRegisterType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def cash_register
          array_of_at(Csh::CashRegisterType, ['lst:cashRegister'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:cash_register] = cash_register.map(&:to_h_with_attrs) if has? 'lst:cashRegister'

          hash
          super.merge(hash)
        end
      end
    end
  end
end