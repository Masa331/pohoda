module Pohoda
  module Builders
    module Lst
      class ListActionPriceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :action_price
            data[:action_price].each { |i| root << Acp::ActionPriceType.new('lst:actionPrice', i).builder }
          end

          root
        end
      end
    end
  end
end