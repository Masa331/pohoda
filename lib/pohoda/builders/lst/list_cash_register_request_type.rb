module Pohoda
  module Builders
    module Lst
      class ListCashRegisterRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_cash_register
            root << Ftr::RequestCashRegisterType.new('lst:requestCashRegister', data[:request_cash_register]).builder
          end

          root
        end
      end
    end
  end
end