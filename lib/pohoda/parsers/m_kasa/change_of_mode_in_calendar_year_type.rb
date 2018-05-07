module Pohoda
  module Parsers
    module MKasa
      class ChangeOfModeInCalendarYearType
        include ParserCore::BaseParser

        def identified_person
          at 'mKasa:identifiedPerson'
        end

        def tax_period
          at 'mKasa:taxPeriod'
        end

        def mode_calendar
          at 'mKasa:modeCalendar'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:identified_person] = identified_person if has? 'mKasa:identifiedPerson'
          hash[:tax_period] = tax_period if has? 'mKasa:taxPeriod'
          hash[:mode_calendar] = mode_calendar if has? 'mKasa:modeCalendar'

          hash
        end
      end
    end
  end
end