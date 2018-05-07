module Pohoda
  module Parsers
    module Bnk
      class BankType
        include ParserCore::BaseParser

        def bank_header
          submodel_at(Bnk::BankHeaderType, 'bnk:bankHeader')
        end

        def bank_detail
          submodel_at(Bnk::BankDetailType, 'bnk:bankDetail')
        end

        def bank_summary
          submodel_at(Bnk::BankSummaryType, 'bnk:bankSummary')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:bank_header] = bank_header.to_h_with_attrs if has? 'bnk:bankHeader'
          hash[:bank_detail] = bank_detail.to_h_with_attrs if has? 'bnk:bankDetail'
          hash[:bank_summary] = bank_summary.to_h_with_attrs if has? 'bnk:bankSummary'

          hash
        end
      end
    end
  end
end