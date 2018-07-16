module Pohoda
  module Builders
    module MKasa
      class VatPayerType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :vat_payer_whole_period
            root << MKasa::VatPayerWholePeriodType.new('mKasa:vatPayerWholePeriod', data[:vat_payer_whole_period]).builder
          end
          if data.key? :non_vat_payer_whole_period
            root << MKasa::NonVatPayerWholePeriodType.new('mKasa:nonVatPayerWholePeriod', data[:non_vat_payer_whole_period]).builder
          end
          if data.key? :change_of_mode_in_calendar_year
            root << MKasa::ChangeOfModeInCalendarYearType.new('mKasa:changeOfModeInCalendarYear', data[:change_of_mode_in_calendar_year]).builder
          end

          root
        end
      end
    end
  end
end