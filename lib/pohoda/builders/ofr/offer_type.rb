module Pohoda
  module Builders
    module Ofr
      class OfferType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :offer_header
            root << Ofr::OfferHeaderType.new('ofr:offerHeader', data[:offer_header]).builder
          end
          if data.key? :offer_detail
            element = Ox::Element.new('ofr:offerDetail')
            data[:offer_detail].each { |i| element << Ofr::OfferItemType.new('ofr:offerItem', i).builder }
            root << element
          end
          if data.key? :offer_summary
            root << Ofr::OfferSummaryType.new('ofr:offerSummary', data[:offer_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('ofr:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end