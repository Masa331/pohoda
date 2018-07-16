module Pohoda
  module Builders
    module Lst
      class ListParameterType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :parameter
            data[:parameter].each { |i| root << Prm::ParameterType.new('lst:parameter', i).builder }
          end

          root
        end
      end
    end
  end
end