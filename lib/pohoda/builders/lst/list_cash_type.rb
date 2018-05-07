module Pohoda
  module Builders
    module Lst
      class ListCashType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_cash
            root << Lst::ItemCashType.new('itemCash', data[:item_cash]).builder
          end

          root
        end
      end
    end
  end
end