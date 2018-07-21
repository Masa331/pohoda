module Pohoda
  module Parsers
    module Enq
      class EnquiryType
        include ParserCore::BaseParser

        def enquiry_header
          submodel_at(Enq::EnquiryHeaderType, 'enq:enquiryHeader')
        end

        def enquiry_detail
          array_of_at(Enq::EnquiryItemType, ['enq:enquiryDetail', 'enq:enquiryItem'])
        end

        def enquiry_summary
          submodel_at(Enq::EnquirySummaryType, 'enq:enquirySummary')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['enq:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:enquiry_header] = enquiry_header.to_h if has? 'enq:enquiryHeader'
          hash[:enquiry_detail] = enquiry_detail.map(&:to_h) if has? 'enq:enquiryDetail'
          hash[:enquiry_summary] = enquiry_summary.to_h if has? 'enq:enquirySummary'
          hash[:print] = print.map(&:to_h) if has? 'enq:print'

          hash
        end
      end
    end
  end
end