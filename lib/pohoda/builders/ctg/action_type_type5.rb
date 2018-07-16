module Pohoda
  module Builders
    module Ctg
      class ActionTypeType5
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :add
            root << Ftr::RequestCategoryActionType.new('ctg:add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestCategoryActionType.new('ctg:update', data[:update]).builder
          end

          root
        end
      end
    end
  end
end