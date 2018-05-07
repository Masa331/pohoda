module Pohoda
  module Parsers
    module Int
      class IntDocType
        include ParserCore::BaseParser

        def int_doc_header
          submodel_at(Int::IntDocHeaderType, 'int:intDocHeader')
        end

        def int_doc_detail
          array_of_at(Int::IntDocItemType, ['int:intDocDetail', 'int:intDocItem'])
        end

        def int_doc_summary
          submodel_at(Int::IntDocSummaryType, 'int:intDocSummary')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['int:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_doc_header] = int_doc_header.to_h_with_attrs if has? 'int:intDocHeader'
          hash[:int_doc_detail] = int_doc_detail.map(&:to_h_with_attrs) if has? 'int:intDocDetail'
          hash[:int_doc_summary] = int_doc_summary.to_h_with_attrs if has? 'int:intDocSummary'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'int:print'

          hash
        end
      end
    end
  end
end