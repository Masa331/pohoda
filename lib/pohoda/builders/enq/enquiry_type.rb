module Pohoda
  module Builders
    module Enq
      class EnquiryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :enquiry_header
            root << Enq::EnquiryHeaderType.new('enquiryHeader', data[:enquiry_header]).builder
          end
          if data.key? :enquiry_detail
            root << Enq::EnquiryDetailType.new('enquiryDetail', data[:enquiry_detail]).builder
          end
          if data.key? :enquiry_summary
            root << Enq::EnquirySummaryType.new('enquirySummary', data[:enquiry_summary]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end