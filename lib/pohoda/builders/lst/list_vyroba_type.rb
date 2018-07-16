module Pohoda
  module Builders
    module Lst
      class ListVyrobaType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :vyroba
            data[:vyroba].each { |i| root << Vyr::VyrobaType.new('lst:vyroba', i).builder }
          end

          root
        end
      end
    end
  end
end