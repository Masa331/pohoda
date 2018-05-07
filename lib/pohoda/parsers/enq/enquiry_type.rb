module Pohoda
  module Parsers
    module Enq
      class EnquiryType
        include ParserCore::BaseParser

        def enquiry_header
          submodel_at(Enq::EnquiryHeaderType, 'enq:enquiryHeader')
        end

        def enquiry_detail
          submodel_at(Enq::EnquiryDetailType, 'enq:enquiryDetail')
        end

        def enquiry_summary
          submodel_at(Enq::EnquirySummaryType, 'enq:enquirySummary')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'enq:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:enquiry_header] = enquiry_header.to_h_with_attrs if has? 'enq:enquiryHeader'
          hash[:enquiry_detail] = enquiry_detail.to_h_with_attrs if has? 'enq:enquiryDetail'
          hash[:enquiry_summary] = enquiry_summary.to_h_with_attrs if has? 'enq:enquirySummary'
          hash[:print] = print.to_h_with_attrs if has? 'enq:print'

          hash
        end
      end
    end
  end
end