module Pohoda
  module Builders
    module Ord
      class ActionTypeType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ord:add', data[:add], data[:add_attributes]) if data.key? :add
          if data.key? :delete
            root << Ftr::DeleteOrderType.new('ord:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end