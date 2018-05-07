module Pohoda
  module Builders
    module MKasa
      class ChangeOfModeInCalendarYearType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:identifiedPerson', data[:identified_person]) if data.key? :identified_person
          root << build_element('mKasa:taxPeriod', data[:tax_period]) if data.key? :tax_period
          root << build_element('mKasa:modeCalendar', data[:mode_calendar]) if data.key? :mode_calendar

          root
        end
      end
    end
  end
end