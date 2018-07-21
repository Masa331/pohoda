module Pohoda
  module Builders
    module Lst
      class ListParameterType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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