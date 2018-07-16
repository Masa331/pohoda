module Pohoda
  module Builders
    module Vyd
      class VydejkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :vydejka_item
            data[:vydejka_item].each { |i| root << Vyd::VydejkaItemType.new('vyd:vydejkaItem', i).builder }
          end

          root
        end
      end
    end
  end
end