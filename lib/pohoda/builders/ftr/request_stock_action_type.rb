module Pohoda
  module Builders
    module Ftr
      class RequestStockActionType < Ftr::RequestStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          root
        end
      end
    end
  end
end