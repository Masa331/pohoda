module Pohoda
  module Parsers
    module MKasa
      class VatPayerType
        include ParserCore::BaseParser

        def vat_payer_whole_period
          submodel_at(MKasa::VatPayerWholePeriodType, 'mKasa:vatPayerWholePeriod')
        end

        def non_vat_payer_whole_period
          submodel_at(MKasa::NonVatPayerWholePeriodType, 'mKasa:nonVatPayerWholePeriod')
        end

        def change_of_mode_in_calendar_year
          submodel_at(MKasa::ChangeOfModeInCalendarYearType, 'mKasa:changeOfModeInCalendarYear')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vat_payer_whole_period] = vat_payer_whole_period.to_h_with_attrs if has? 'mKasa:vatPayerWholePeriod'
          hash[:non_vat_payer_whole_period] = non_vat_payer_whole_period.to_h_with_attrs if has? 'mKasa:nonVatPayerWholePeriod'
          hash[:change_of_mode_in_calendar_year] = change_of_mode_in_calendar_year.to_h_with_attrs if has? 'mKasa:changeOfModeInCalendarYear'

          hash
        end
      end
    end
  end
end