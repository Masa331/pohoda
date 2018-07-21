module Pohoda
  module Builders
    module Stk
      class StockAttachType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :attach_item
            data[:attach_item].each { |i| root << Stk::AttachItemType.new('stk:attachItem', i).builder }
          end

          root
        end
      end
    end
  end
end