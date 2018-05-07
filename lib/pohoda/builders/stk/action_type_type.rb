module Pohoda
  module Builders
    module Stk
      class ActionTypeType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :add
            root << Ftr::RequestStockActionType.new('add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestStockActionType.new('update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestStockType.new('delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end