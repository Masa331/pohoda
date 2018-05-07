module Pohoda
  module Builders
    module Lst
      class ListCashRegisterType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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