module Pohoda
  module Builders
    module Lst
      class ListProdejkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_prodejka
            root << Ftr::RequestProdejkaType.new('lst:requestProdejka', data[:request_prodejka]).builder
          end

          root
        end
      end
    end
  end
end