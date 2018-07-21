module Pohoda
  module Builders
    module Lst
      class ListIntParamType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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