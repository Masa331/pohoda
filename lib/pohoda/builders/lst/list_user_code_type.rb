module Pohoda
  module Builders
    module Lst
      class ListUserCodeType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :item_user_code
            root << Lst::ItemUserCodeType.new('lst:itemUserCode', data[:item_user_code]).builder
          end

          root
        end
      end
    end
  end
end