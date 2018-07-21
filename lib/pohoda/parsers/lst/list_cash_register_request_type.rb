module Pohoda
  module Parsers
    module Lst
      class ListCashRegisterRequestType
        include ParserCore::BaseParser

        def request_cash_register
          submodel_at(Ftr::RequestCashRegisterType, 'lst:requestCashRegister')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_cash_register] = request_cash_register.to_h if has? 'lst:requestCashRegister'

          hash
        end
      end
    end
  end
end