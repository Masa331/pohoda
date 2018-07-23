module Pohoda
  module Builders
    module Lst
      class ListCashRegisterType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :cash_register
            data[:cash_register].each { |i| root << Csh::CashRegisterType.new('lst:cashRegister', i).builder }
          end

          root
        end
      end
    end
  end
end