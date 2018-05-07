module Pohoda
  module Builders
    module Ofr
      class OfferType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :offer_header
            root << Ofr::OfferHeaderType.new('offerHeader', data[:offer_header]).builder
          end
          if data.key? :offer_detail
            root << Ofr::OfferDetailType.new('offerDetail', data[:offer_detail]).builder
          end
          if data.key? :offer_summary
            root << Ofr::OfferSummaryType.new('offerSummary', data[:offer_summary]).builder
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