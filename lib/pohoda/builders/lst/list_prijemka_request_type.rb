module Pohoda
  module Builders
    module Lst
      class ListPrijemkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_prijemka
            root << Ftr::RequestPrijemkaType.new('lst:requestPrijemka', data[:request_prijemka]).builder
          end

          root
        end
      end
    end
  end
end