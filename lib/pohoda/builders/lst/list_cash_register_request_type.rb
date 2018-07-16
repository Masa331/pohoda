module Pohoda
  module Builders
    module Lst
      class ListCashRegisterRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_cash_register
            root << Ftr::RequestCashRegisterType.new('lst:requestCashRegister', data[:request_cash_register]).builder
          end

          root
        end
      end
    end
  end
end