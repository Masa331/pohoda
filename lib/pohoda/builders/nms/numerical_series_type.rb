module Pohoda
  module Builders
    module Nms
      class NumericalSeriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :numerical_series_header
            root << Nms::NumericalSeriesHeaderType.new('nms:numericalSeriesHeader', data[:numerical_series_header]).builder
          end

          root
        end
      end
    end
  end
end