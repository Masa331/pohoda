module Pohoda
  module Builders
    module Stk
      class RelatedLinkType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('stk:addressURL', data[:address_url], data[:address_url_attributes]) if data.key? :address_url
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description

          root
        end
      end
    end
  end
end