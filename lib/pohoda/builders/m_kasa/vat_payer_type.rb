module Pohoda
  module Builders
    module MKasa
      class VatPayerType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :vat_payer_whole_period
            root << MKasa::VatPayerWholePeriodType.new('vatPayerWholePeriod', data[:vat_payer_whole_period]).builder
          end
          if data.key? :non_vat_payer_whole_period
            root << MKasa::NonVatPayerWholePeriodType.new('nonVatPayerWholePeriod', data[:non_vat_payer_whole_period]).builder
          end
          if data.key? :change_of_mode_in_calendar_year
            root << MKasa::ChangeOfModeInCalendarYearType.new('changeOfModeInCalendarYear', data[:change_of_mode_in_calendar_year]).builder
          end

          root
        end
      end
    end
  end
end