module Pohoda
  module Builders
    module LStk
      class ListRequestStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_stock
            root << Ftr::RequestStockType.new('requestStock', data[:request_stock]).builder
          end

          root
        end
      end
    end
  end
end