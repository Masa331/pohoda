module Pohoda
  module Parsers
    module MKasa
      class ChangeOfModeInCalendarYearType
        include ParserCore::BaseParser

        def identified_person
          at 'mKasa:identifiedPerson'
        end

        def identified_person_attributes
          attributes_at 'mKasa:identifiedPerson'
        end

        def tax_period
          at 'mKasa:taxPeriod'
        end

        def tax_period_attributes
          attributes_at 'mKasa:taxPeriod'
        end

        def mode_calendar
          at 'mKasa:modeCalendar'
        end

        def mode_calendar_attributes
          attributes_at 'mKasa:modeCalendar'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:identified_person] = identified_person if has? 'mKasa:identifiedPerson'
          hash[:identified_person_attributes] = identified_person_attributes if has? 'mKasa:identifiedPerson'
          hash[:tax_period] = tax_period if has? 'mKasa:taxPeriod'
          hash[:tax_period_attributes] = tax_period_attributes if has? 'mKasa:taxPeriod'
          hash[:mode_calendar] = mode_calendar if has? 'mKasa:modeCalendar'
          hash[:mode_calendar_attributes] = mode_calendar_attributes if has? 'mKasa:modeCalendar'

          hash
        end
      end
    end
  end
end