module Pohoda
  module Builders
    module Lst
      class ListVyrobaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_vyroba
            root << Ftr::RequestVyrobaType.new('lst:requestVyroba', data[:request_vyroba]).builder
          end

          root
        end
      end
    end
  end
end