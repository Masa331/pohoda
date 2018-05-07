module Pohoda
  module Builders
    module Lst
      class ListNumericalSeriesRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_numerical_series
            root << Ftr::RequestNumericalSeriesType.new('requestNumericalSeries', data[:request_numerical_series]).builder
          end

          root
        end
      end
    end
  end
end