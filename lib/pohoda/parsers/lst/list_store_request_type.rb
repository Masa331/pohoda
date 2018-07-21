module Pohoda
  module Parsers
    module Lst
      class ListStoreRequestType
        include ParserCore::BaseParser

        def request_store
          submodel_at(Ftr::RequestStoreType, 'lst:requestStore')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_store] = request_store.to_h if has? 'lst:requestStore'

          hash
        end
      end
    end
  end
end