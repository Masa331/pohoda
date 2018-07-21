module Pohoda
  module Parsers
    module Lst
      class ListPrevodkaRequestType
        include ParserCore::BaseParser

        def request_prevodka
          submodel_at(Ftr::RequestPrevodkaType, 'lst:requestPrevodka')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_prevodka] = request_prevodka.to_h if has? 'lst:requestPrevodka'

          hash
        end
      end
    end
  end
end