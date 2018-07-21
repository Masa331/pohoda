module Pohoda
  module Parsers
    module Lst
      class ListVyrobaRequestType
        include ParserCore::BaseParser

        def request_vyroba
          submodel_at(Ftr::RequestVyrobaType, 'lst:requestVyroba')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_vyroba] = request_vyroba.to_h if has? 'lst:requestVyroba'

          hash
        end
      end
    end
  end
end