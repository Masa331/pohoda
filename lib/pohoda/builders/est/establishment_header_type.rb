module Pohoda
  module Builders
    module Est
      class EstablishmentHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('est:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('est:extId', data[:ext_id]).builder
          end
          root << build_element('est:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('est:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('est:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('est:zip', data[:zip], data[:zip_attributes]) if data.key? :zip
          root << build_element('est:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('est:phone', data[:phone], data[:phone_attributes]) if data.key? :phone
          root << build_element('est:mobil', data[:mobil], data[:mobil_attributes]) if data.key? :mobil
          root << build_element('est:fax', data[:fax], data[:fax_attributes]) if data.key? :fax
          root << build_element('est:email', data[:email], data[:email_attributes]) if data.key? :email
          root << build_element('est:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('est:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record

          root
        end
      end
    end
  end
end