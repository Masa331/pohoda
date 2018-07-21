module Pohoda
  module Builders
    module LStk
      class ListRequestStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_stock
            root << Ftr::RequestStockType.new('lStk:requestStock', data[:request_stock]).builder
          end

          root
        end
      end
    end
  end
end