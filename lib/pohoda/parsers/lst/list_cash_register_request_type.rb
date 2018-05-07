module Pohoda
  module Parsers
    module Lst
      class ListCashRegisterRequestType
        include ParserCore::BaseParser

        def request_cash_register
          submodel_at(Ftr::RequestCashRegisterType, 'lst:requestCashRegister')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_cash_register] = request_cash_register.to_h_with_attrs if has? 'lst:requestCashRegister'

          hash
        end
      end
    end
  end
end