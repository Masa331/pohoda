module Pohoda
  module Parsers
    module Lst
      class ListProdejkaRequestType
        include ParserCore::BaseParser

        def request_prodejka
          submodel_at(Ftr::RequestProdejkaType, 'lst:requestProdejka')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_prodejka] = request_prodejka.to_h_with_attrs if has? 'lst:requestProdejka'

          hash
        end
      end
    end
  end
end