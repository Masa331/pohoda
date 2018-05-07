module Pohoda
  module Builders
    module Lst
      class ListBalanceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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