module Pohoda
  module Builders
    module Lst
      class ItemAccountingTypeDoubleEntry
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root
        end
      end
    end
  end
end