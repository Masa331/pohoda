module Pohoda
  module Parsers
    module MKasa
      class VatPayerWholePeriodType
        include ParserCore::BaseParser

        def tax_period
          at 'mKasa:taxPeriod'
        end

        def tax_period_attributes
          attributes_at 'mKasa:taxPeriod'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:tax_period] = tax_period if has? 'mKasa:taxPeriod'
          hash[:tax_period_attributes] = tax_period_attributes if has? 'mKasa:taxPeriod'

          hash
        end
      end
    end
  end
end