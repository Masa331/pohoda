module Pohoda
  module Builders
    module Typ
      class LinkItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:sourceAgenda', data[:source_agenda]) if data.key? :source_agenda
          root << build_element('typ:sourceItemId', data[:source_item_id]) if data.key? :source_item_id

          root
        end
      end
    end
  end
end