module Pohoda
  module Builders
    module Grs
      class ActionTypeType6
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :add
            root << Ftr::RequestGroupStocksActionType.new('grs:add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestGroupStocksActionType.new('grs:update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestGroupStocksType.new('grs:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end