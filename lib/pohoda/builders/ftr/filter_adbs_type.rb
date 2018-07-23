module Pohoda
  module Builders
    module Ftr
      class FilterAdbsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('ftr:extId', data[:ext_id]).builder
          end
          root << build_element('ftr:company', data[:company], data[:company_attributes]) if data.key? :company
          root << build_element('ftr:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('ftr:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('ftr:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('ftr:zip', data[:zip], data[:zip_attributes]) if data.key? :zip
          root << build_element('ftr:ico', data[:ico], data[:ico_attributes]) if data.key? :ico
          root << build_element('ftr:dic', data[:dic], data[:dic_attributes]) if data.key? :dic
          if data.key? :number
            root << Typ::NumberADType.new('ftr:number', data[:number]).builder
          end
          root << build_element('ftr:lastChanges', data[:last_changes], data[:last_changes_attributes]) if data.key? :last_changes

          root
        end
      end
    end
  end
end