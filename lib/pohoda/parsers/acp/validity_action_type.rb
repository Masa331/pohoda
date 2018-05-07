module Pohoda
  module Parsers
    module Acp
      class ValidityActionType
        include ParserCore::BaseParser

        def date_from
          at 'acp:dateFrom'
        end

        def date_till
          at 'acp:dateTill'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date_from] = date_from if has? 'acp:dateFrom'
          hash[:date_till] = date_till if has? 'acp:dateTill'

          hash
        end
      end
    end
  end
end