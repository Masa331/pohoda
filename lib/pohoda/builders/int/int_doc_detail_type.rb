module Pohoda
  module Builders
    module Int
      class IntDocDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :int_doc_item
            data[:int_doc_item].each { |i| root << Int::IntDocItemType.new('int:intDocItem', i).builder }
          end

          root
        end
      end
    end
  end
end