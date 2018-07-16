module Pohoda
  module Builders
    module Stk
      class RelatedLinkType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:addressURL', data[:address_url], data[:address_url_attributes]) if data.key? :address_url
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description

          root
        end
      end
    end
  end
end