module Pohoda
  module Builders
    module LCen
      class ListRequestCentreType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lCen:requestCentre', data[:request_centre], data[:request_centre_attributes]) if data.key? :request_centre

          root
        end
      end
    end
  end
end