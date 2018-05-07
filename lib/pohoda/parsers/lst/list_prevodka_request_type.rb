module Pohoda
  module Parsers
    module Lst
      class ListPrevodkaRequestType
        include ParserCore::BaseParser

        def request_prevodka
          submodel_at(Ftr::RequestPrevodkaType, 'lst:requestPrevodka')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_prevodka] = request_prevodka.to_h_with_attrs if has? 'lst:requestPrevodka'

          hash
        end
      end
    end
  end
end