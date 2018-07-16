module Pohoda
  module Builders
    module Ftr
      class FilterDocsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ftr:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('ftr:dateTill', data[:date_till], data[:date_till_attributes]) if data.key? :date_till
          if data.key? :selected_numbers
            element = Ox::Element.new('ftr:selectedNumbers')
            data[:selected_numbers].each { |i| element << Typ::NumberType.new('ftr:number', i).builder }
            root << element
          end
          if data.key? :selected_companys
            element = Ox::Element.new('ftr:selectedCompanys')
            data[:selected_companys].each { |i| element << Typ::StringCompany.new('ftr:company', i).builder }
            root << element
          end
          if data.key? :selected_ico
            element = Ox::Element.new('ftr:selectedIco')
            data[:selected_ico].each { |i| element << Typ::IcoType.new('ftr:ico', i).builder }
            root << element
          end
          root << build_element('ftr:lastChanges', data[:last_changes], data[:last_changes_attributes]) if data.key? :last_changes

          root
        end
      end
    end
  end
end