module Pohoda
  module Parsers
    module Nms
      class PeriodAccountUnitType
        include ParserCore::BaseParser

        def date_from
          at 'nms:dateFrom'
        end

        def date_till
          at 'nms:dateTill'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date_from] = date_from if has? 'nms:dateFrom'
          hash[:date_till] = date_till if has? 'nms:dateTill'

          hash
        end
      end
    end
  end
end