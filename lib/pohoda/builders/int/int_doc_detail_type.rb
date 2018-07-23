module Pohoda
  module Builders
    module Int
      class IntDocDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :int_doc_item
            data[:int_doc_item].each { |i| root << Int::IntDocItemType.new('int:intDocItem', i).builder }
          end

          root
        end
      end
    end
  end
end