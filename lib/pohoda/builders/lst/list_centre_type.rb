module Pohoda
  module Builders
    module Lst
      class ListCentreType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_centre
            root << Lst::ItemNameType.new('lst:itemCentre', data[:item_centre]).builder
          end

          root
        end
      end
    end
  end
end