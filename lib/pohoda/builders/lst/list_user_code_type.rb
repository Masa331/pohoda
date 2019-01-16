module Pohoda
  module Builders
    module Lst
      class ListUserCodeType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:itemUserCode', data[:item_user_code], data[:item_user_code_attributes]) if data.key? :item_user_code

          root
        end
      end
    end
  end
end