module Pohoda
  module Builders
    module Lst
      class ListIntParamType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :int_param_detail
            data[:int_param_detail].each { |i| root << Ipm::IntParamDetailType.new('lst:intParamDetail', i).builder }
          end

          root
        end
      end
    end
  end
end