module Pohoda
  module Builders
    module Lst
      class ListEstablishmentType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :establishment
            data[:establishment].each { |i| root << Est::EstablishmentType.new('lst:establishment', i).builder }
          end

          root
        end
      end
    end
  end
end