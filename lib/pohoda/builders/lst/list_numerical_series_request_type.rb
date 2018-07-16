module Pohoda
  module Builders
    module Lst
      class ListNumericalSeriesRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_numerical_series
            root << Ftr::RequestNumericalSeriesType.new('lst:requestNumericalSeries', data[:request_numerical_series]).builder
          end

          root
        end
      end
    end
  end
end