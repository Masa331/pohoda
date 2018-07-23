module Pohoda
  module Builders
    module Stk
      class StockAttachType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :attach_item
            data[:attach_item].each { |i| root << Stk::AttachItemType.new('stk:attachItem', i).builder }
          end

          root
        end
      end
    end
  end
end