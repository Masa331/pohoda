module Pohoda
  module Builders
    module Lst
      class ListIntDocType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :int_doc
            data[:int_doc].each { |i| root << Int::IntDocType.new('lst:intDoc', i).builder }
          end

          root
        end
      end
    end
  end
end