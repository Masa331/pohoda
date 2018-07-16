module Pohoda
  module Builders
    module Lst
      class ListBalanceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :balance
            data[:balance].each { |i| root << Bal::BalanceType.new('lst:balance', i).builder }
          end

          root
        end
      end
    end
  end
end