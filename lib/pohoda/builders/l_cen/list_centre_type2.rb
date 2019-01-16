module Pohoda
  module Builders
    module LCen
      class ListCentreType2 < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :centre
            data[:centre].each { |i| root << Cen::CentreType.new('lCen:centre', i).builder }
          end

          root
        end
      end
    end
  end
end