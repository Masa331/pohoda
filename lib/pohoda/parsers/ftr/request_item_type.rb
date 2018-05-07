module Pohoda
  module Parsers
    module Ftr
      class RequestItemType
        include ParserCore::BaseParser

        def filter
          submodel_at(Ftr::FilterIDType, 'ftr:filter')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:filter] = filter.to_h_with_attrs if has? 'ftr:filter'

          hash
        end
      end
    end
  end
end