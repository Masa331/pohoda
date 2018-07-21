module Pohoda
  module Builders
    module Ofr
      class OfferDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :offer_item
            data[:offer_item].each { |i| root << Ofr::OfferItemType.new('ofr:offerItem', i).builder }
          end

          root
        end
      end
    end
  end
end