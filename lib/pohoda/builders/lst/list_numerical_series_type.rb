module Pohoda
  module Builders
    module Lst
      class ListNumericalSeriesType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :numerical_series
            data[:numerical_series].each { |i| root << Nm::NumericalSeriesType.new('lst:numericalSeries', i).builder }
          end

          root
        end
      end
    end
  end
end