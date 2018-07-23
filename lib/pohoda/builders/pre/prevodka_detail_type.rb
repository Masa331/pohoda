module Pohoda
  module Builders
    module Pre
      class PrevodkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :prevodka_item
            data[:prevodka_item].each { |i| root << Pre::PrevodkaItemType.new('pre:prevodkaItem', i).builder }
          end

          root
        end
      end
    end
  end
end