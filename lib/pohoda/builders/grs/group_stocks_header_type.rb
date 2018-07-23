module Pohoda
  module Builders
    module Grs
      class GroupStocksHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('grs:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('grs:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('grs:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('grs:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('grs:internet', data[:internet], data[:internet_attributes]) if data.key? :internet
          root << build_element('grs:picture', data[:picture], data[:picture_attributes]) if data.key? :picture
          root << build_element('grs:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('grs:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record

          root
        end
      end
    end
  end
end