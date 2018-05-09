module Pohoda
  module Builders
    module Lst
      class ListStorageType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_storage
            data[:item_storage].each { |i| root << Lst::ItemStorageType.new('lst:itemStorage', i).builder }
          end

          root
        end
      end
    end
  end
end