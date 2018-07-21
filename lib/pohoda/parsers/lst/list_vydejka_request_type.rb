module Pohoda
  module Parsers
    module Lst
      class ListVydejkaRequestType
        include ParserCore::BaseParser

        def request_vydejka
          submodel_at(Ftr::RequestVydejkaType, 'lst:requestVydejka')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_vydejka] = request_vydejka.to_h if has? 'lst:requestVydejka'

          hash
        end
      end
    end
  end
end