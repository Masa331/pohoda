module Pohoda
  module Builders
    module Grs
      class GroupStocksDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :variant
            data[:variant].each { |i| root << Gr::VariantsItemType.new('grs:variant', i).builder }
          end

          root
        end
      end
    end
  end
end