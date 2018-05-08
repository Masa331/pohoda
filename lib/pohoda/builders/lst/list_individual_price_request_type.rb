module Pohoda
  module Builders
    module Lst
      class ListIndividualPriceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_individual_price
            root << Ftr::RequestAddressBookType.new('lst:requestIndividualPrice', data[:request_individual_price]).builder
          end

          root
        end
      end
    end
  end
end