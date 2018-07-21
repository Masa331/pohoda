module Pohoda
  module Builders
    module Lst
      class ListProdejkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_prodejka
            root << Ftr::RequestProdejkaType.new('lst:requestProdejka', data[:request_prodejka]).builder
          end

          root
        end
      end
    end
  end
end