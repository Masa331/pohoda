module Pohoda
  module Builders
    module Idp
      class PriceGroupItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('idp:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('idp:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('idp:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('idp:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage

          root
        end
      end
    end
  end
end