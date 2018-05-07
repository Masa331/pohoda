module Pohoda
  module Builders
    module Lst
      class ListOfferRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_offer
            root << Ftr::RequestOfferType.new('requestOffer', data[:request_offer]).builder
          end

          root
        end
      end
    end
  end
end