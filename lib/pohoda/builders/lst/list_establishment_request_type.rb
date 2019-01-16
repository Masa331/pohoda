module Pohoda
  module Builders
    module Lst
      class ListEstablishmentRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:requestEstablishment', data[:request_establishment], data[:request_establishment_attributes]) if data.key? :request_establishment

          root
        end
      end
    end
  end
end