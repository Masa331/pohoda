module Pohoda
  module Builders
    module Lst
      class ListGroupStocksRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_group_stocks
            root << Ftr::RequestGroupStocksType.new('requestGroupStocks', data[:request_group_stocks]).builder
          end

          root
        end
      end
    end
  end
end