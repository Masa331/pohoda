module Pohoda
  module Parsers
    module Lst
      class ListProdejkaRequestType
        include ParserCore::BaseParser

        def request_prodejka
          submodel_at(Ftr::RequestProdejkaType, 'lst:requestProdejka')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_prodejka] = request_prodejka.to_h if has? 'lst:requestProdejka'

          hash
        end
      end
    end
  end
end