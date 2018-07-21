module Pohoda
  module Parsers
    module Bnk
      class BankType
        include ParserCore::BaseParser

        def bank_header
          submodel_at(Bnk::BankHeaderType, 'bnk:bankHeader')
        end

        def bank_detail
          array_of_at(Bnk::BankItemType, ['bnk:bankDetail', 'bnk:bankItem'])
        end

        def bank_summary
          submodel_at(Bnk::BankSummaryType, 'bnk:bankSummary')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:bank_header] = bank_header.to_h if has? 'bnk:bankHeader'
          hash[:bank_detail] = bank_detail.map(&:to_h) if has? 'bnk:bankDetail'
          hash[:bank_summary] = bank_summary.to_h if has? 'bnk:bankSummary'

          hash
        end
      end
    end
  end
end