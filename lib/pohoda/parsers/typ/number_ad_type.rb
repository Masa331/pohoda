module Pohoda
  module Parsers
    module Typ
      class NumberADType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def number_requested
          at 'typ:numberRequested'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:number_requested] = number_requested if has? 'typ:numberRequested'

          hash
        end
      end
    end
  end
end