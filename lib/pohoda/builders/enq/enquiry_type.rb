module Pohoda
  module Builders
    module Enq
      class EnquiryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :enquiry_header
            root << Enq::EnquiryHeaderType.new('enq:enquiryHeader', data[:enquiry_header]).builder
          end
          if data.key? :enquiry_detail
            element = Ox::Element.new('enq:enquiryDetail')
            data[:enquiry_detail].each { |i| element << Enq::EnquiryItemType.new('enq:enquiryItem', i).builder }
            root << element
          end
          if data.key? :enquiry_summary
            root << Enq::EnquirySummaryType.new('enq:enquirySummary', data[:enquiry_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('enq:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end