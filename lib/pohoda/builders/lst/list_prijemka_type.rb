module Pohoda
  module Builders
    module Lst
      class ListPrijemkaType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :prijemka
            data[:prijemka].each { |i| root << Pri::PrijemkaType.new('lst:prijemka', i).builder }
          end

          root
        end
      end
    end
  end
end