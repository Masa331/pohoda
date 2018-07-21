module Pohoda
  module Builders
    module Ftr
      class RequestExtIdType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :filter
            root << Ftr::FilterExtIdType.new('ftr:filter', data[:filter]).builder
          end

          root
        end
      end
    end
  end
end