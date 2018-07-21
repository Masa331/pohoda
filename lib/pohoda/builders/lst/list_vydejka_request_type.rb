module Pohoda
  module Builders
    module Lst
      class ListVydejkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_vydejka
            root << Ftr::RequestVydejkaType.new('lst:requestVydejka', data[:request_vydejka]).builder
          end

          root
        end
      end
    end
  end
end