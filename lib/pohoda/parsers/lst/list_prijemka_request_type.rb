module Pohoda
  module Parsers
    module Lst
      class ListPrijemkaRequestType
        include ParserCore::BaseParser

        def request_prijemka
          submodel_at(Ftr::RequestPrijemkaType, 'lst:requestPrijemka')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_prijemka] = request_prijemka.to_h_with_attrs if has? 'lst:requestPrijemka'

          hash
        end
      end
    end
  end
end