module Pohoda
  module Parsers
    module Ftr
      class FilterDocsDeleteType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def number
          at 'ftr:number'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:number] = number if has? 'ftr:number'

          hash
        end
      end
    end
  end
end