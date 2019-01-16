module Pohoda
  module Builders
    module Gdp
      class GDPRHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('gdp:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('gdp:GDPRType', data[:gdpr_type], data[:gdpr_type_attributes]) if data.key? :gdpr_type
          root << build_element('gdp:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('gdp:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('gdp:valueOfValidity', data[:value_of_validity], data[:value_of_validity_attributes]) if data.key? :value_of_validity
          root << build_element('gdp:typeOfValidity', data[:type_of_validity], data[:type_of_validity_attributes]) if data.key? :type_of_validity
          root << build_element('gdp:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('gdp:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record

          root
        end
      end
    end
  end
end