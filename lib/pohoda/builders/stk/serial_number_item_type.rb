module Pohoda
  module Builders
    module Stk
      class SerialNumberItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('stk:serialNumber', data[:serial_number], data[:serial_number_attributes]) if data.key? :serial_number
          root << build_element('stk:count', data[:count], data[:count_attributes]) if data.key? :count
          root << build_element('stk:expiration', data[:expiration], data[:expiration_attributes]) if data.key? :expiration
          root << build_element('stk:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end