module Pohoda
  module Parsers
    module MKasa
      class VatPayerWholePeriodType
        include ParserCore::BaseParser

        def tax_period
          at 'mKasa:taxPeriod'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:tax_period] = tax_period if has? 'mKasa:taxPeriod'

          hash
        end
      end
    end
  end
end