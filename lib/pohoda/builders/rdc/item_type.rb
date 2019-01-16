module Pohoda
  module Builders
    module Rdc
      class ItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('rdc:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          root << build_element('rdc:extId', data[:ext_id], data[:ext_id_attributes]) if data.key? :ext_id
          if data.key? :produced_item
            element = Ox::Element.new('rdc:producedItem')
            data[:produced_item].map { |i| Ox::Element.new('rdc:id') << i }.each { |i| element << i }
            root << element
          end

          root
        end
      end
    end
  end
end