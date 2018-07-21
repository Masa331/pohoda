module Pohoda
  module Parsers
    module Lst
      class ListCashRegisterType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def cash_register
          array_of_at(Csh::CashRegisterType, ['lst:cashRegister'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:cash_register] = cash_register.map(&:to_h) if has? 'lst:cashRegister'

          hash
          super.merge(hash)
        end
      end
    end
  end
end