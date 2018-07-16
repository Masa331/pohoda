module Pohoda
  module Builders
    module Ofr
      class OfferDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :offer_item
            data[:offer_item].each { |i| root << Ofr::OfferItemType.new('ofr:offerItem', i).builder }
          end

          root
        end
      end
    end
  end
end