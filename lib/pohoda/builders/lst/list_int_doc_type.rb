module Pohoda
  module Builders
    module Lst
      class ListIntDocType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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