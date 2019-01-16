module Pohoda
  module Parsers
    module Ftr
      class RequestItemType
        include ParserCore::BaseParser

        def filter
          submodel_at(Ftr::FilterExtIdType, 'ftr:filter')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:filter] = filter.to_h if has? 'ftr:filter'

          hash
        end
      end
    end
  end
end