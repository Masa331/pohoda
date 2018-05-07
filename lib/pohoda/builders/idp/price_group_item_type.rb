module Pohoda
  module Builders
    module Idp
      class PriceGroupItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('idp:id', data[:id]) if data.key? :id
          root << build_element('idp:name', data[:name]) if data.key? :name
          root << build_element('idp:description', data[:description]) if data.key? :description
          root << build_element('idp:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage

          root
        end
      end
    end
  end
end