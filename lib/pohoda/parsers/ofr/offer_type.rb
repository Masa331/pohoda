module Pohoda
  module Parsers
    module Ofr
      class OfferType
        include ParserCore::BaseParser

        def offer_header
          submodel_at(Ofr::OfferHeaderType, 'ofr:offerHeader')
        end

        def offer_detail
          array_of_at(Ofr::OfferItemType, ['ofr:offerDetail', 'ofr:offerItem'])
        end

        def offer_summary
          submodel_at(Ofr::OfferSummaryType, 'ofr:offerSummary')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['ofr:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:offer_header] = offer_header.to_h if has? 'ofr:offerHeader'
          hash[:offer_detail] = offer_detail.map(&:to_h) if has? 'ofr:offerDetail'
          hash[:offer_summary] = offer_summary.to_h if has? 'ofr:offerSummary'
          hash[:print] = print.map(&:to_h) if has? 'ofr:print'

          hash
        end
      end
    end
  end
end