module Pohoda
  module Parsers
    module Ftr
      class FilterGroupStockType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def code
          at 'ftr:code'
        end

        def name
          at 'ftr:name'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:code] = code if has? 'ftr:code'
          hash[:name] = name if has? 'ftr:name'

          hash
        end
      end
    end
  end
end