module Pohoda
  module Builders
    module Lst
      class ListIndividualPriceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :individual_price
            data[:individual_price].each { |i| root << Idp::IndividualPriceType.new('lst:individualPrice', i).builder }
          end

          root
        end
      end
    end
  end
end