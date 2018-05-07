module Pohoda
  module Parsers
    module Int
      class IntDocType
        include ParserCore::BaseParser

        def int_doc_header
          submodel_at(Int::IntDocHeaderType, 'int:intDocHeader')
        end

        def int_doc_detail
          submodel_at(Int::IntDocDetailType, 'int:intDocDetail')
        end

        def int_doc_summary
          submodel_at(Int::IntDocSummaryType, 'int:intDocSummary')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'int:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_doc_header] = int_doc_header.to_h_with_attrs if has? 'int:intDocHeader'
          hash[:int_doc_detail] = int_doc_detail.to_h_with_attrs if has? 'int:intDocDetail'
          hash[:int_doc_summary] = int_doc_summary.to_h_with_attrs if has? 'int:intDocSummary'
          hash[:print] = print.to_h_with_attrs if has? 'int:print'

          hash
        end
      end
    end
  end
end