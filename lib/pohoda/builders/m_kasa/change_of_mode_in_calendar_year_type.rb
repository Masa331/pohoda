module Pohoda
  module Builders
    module MKasa
      class ChangeOfModeInCalendarYearType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:identifiedPerson', data[:identified_person], data[:identified_person_attributes]) if data.key? :identified_person
          root << build_element('mKasa:taxPeriod', data[:tax_period], data[:tax_period_attributes]) if data.key? :tax_period
          root << build_element('mKasa:modeCalendar', data[:mode_calendar], data[:mode_calendar_attributes]) if data.key? :mode_calendar

          root
        end
      end
    end
  end
end