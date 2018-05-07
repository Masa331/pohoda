module Pohoda
  module Parsers
    module Lst
      class ListIntDocRequestType
        include ParserCore::BaseParser

        def request_int_doc
          submodel_at(Ftr::RequestIntDocType, 'lst:requestIntDoc')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_int_doc] = request_int_doc.to_h_with_attrs if has? 'lst:requestIntDoc'

          hash
        end
      end
    end
  end
end