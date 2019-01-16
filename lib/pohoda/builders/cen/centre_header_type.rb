module Pohoda
  module Builders
    module Cen
      class CentreHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('cen:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('cen:extId', data[:ext_id]).builder
          end
          root << build_element('cen:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('cen:name', data[:name], data[:name_attributes]) if data.key? :name
          if data.key? :establishment
            root << Typ::RefType.new('cen:establishment', data[:establishment]).builder
          end
          root << build_element('cen:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('cen:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record

          root
        end
      end
    end
  end
end