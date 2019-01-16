module Pohoda
  module Builders
    module Rdc
      class ProducedDetailsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('rdc:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('rdc:number', data[:number], data[:number_attributes]) if data.key? :number
          root << build_element('rdc:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('rdc:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          if data.key? :ext_id
            root << Typ::ExtIdType.new('rdc:extId', data[:ext_id]).builder
          end
          if data.key? :item_details
            element = Ox::Element.new('rdc:itemDetails')
            data[:item_details].each { |i| element << Rdc::ItemType.new('rdc:item', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end