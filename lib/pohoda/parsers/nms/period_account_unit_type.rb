module Pohoda
  module Parsers
    module Nms
      class PeriodAccountUnitType
        include ParserCore::BaseParser

        def date_from
          at 'nms:dateFrom'
        end

        def date_from_attributes
          attributes_at 'nms:dateFrom'
        end

        def date_till
          at 'nms:dateTill'
        end

        def date_till_attributes
          attributes_at 'nms:dateTill'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date_from] = date_from if has? 'nms:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'nms:dateFrom'
          hash[:date_till] = date_till if has? 'nms:dateTill'
          hash[:date_till_attributes] = date_till_attributes if has? 'nms:dateTill'

          hash
        end
      end
    end
  end
end