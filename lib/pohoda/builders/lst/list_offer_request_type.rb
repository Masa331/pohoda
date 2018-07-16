module Pohoda
  module Builders
    module Lst
      class ListOfferRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_offer
            root << Ftr::RequestOfferType.new('lst:requestOffer', data[:request_offer]).builder
          end

          root
        end
      end
    end
  end
end