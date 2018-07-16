module Pohoda
  module Builders
    module Bka
      class ActionTypeType4
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :add
            root << Ftr::RequestExtIdActionType.new('bka:add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestExtIdActionType.new('bka:update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestExtIdType.new('bka:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end