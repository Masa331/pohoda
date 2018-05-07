module Pohoda
  module Builders
    module Nms
      class NumericalSeriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :numerical_series_header
            root << Nms::NumericalSeriesHeaderType.new('numericalSeriesHeader', data[:numerical_series_header]).builder
          end

          root
        end
      end
    end
  end
end