module Pohoda
  module Builders
    module Lst
      class ListPrevodkaType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :prevodka
            data[:prevodka].each { |i| root << Pre::PrevodkaType.new('lst:prevodka', i).builder }
          end

          root
        end
      end
    end
  end
end