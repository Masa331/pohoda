module Pohoda
  module Parsers
    module Ofr
      class OfferType
        include ParserCore::BaseParser

        def offer_header
          submodel_at(Ofr::OfferHeaderType, 'ofr:offerHeader')
        end

        def offer_detail
          submodel_at(Ofr::OfferDetailType, 'ofr:offerDetail')
        end

        def offer_summary
          submodel_at(Ofr::OfferSummaryType, 'ofr:offerSummary')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'ofr:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:offer_header] = offer_header.to_h_with_attrs if has? 'ofr:offerHeader'
          hash[:offer_detail] = offer_detail.to_h_with_attrs if has? 'ofr:offerDetail'
          hash[:offer_summary] = offer_summary.to_h_with_attrs if has? 'ofr:offerSummary'
          hash[:print] = print.to_h_with_attrs if has? 'ofr:print'

          hash
        end
      end
    end
  end
end