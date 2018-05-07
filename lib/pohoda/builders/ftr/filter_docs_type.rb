module Pohoda
  module Builders
    module Ftr
      class FilterDocsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ftr:id', data[:id]) if data.key? :id
          root << build_element('ftr:dateFrom', data[:date_from]) if data.key? :date_from
          root << build_element('ftr:dateTill', data[:date_till]) if data.key? :date_till
          if data.key? :selected_numbers
            root << Ftr::SelectedNumbersType.new('selectedNumbers', data[:selected_numbers]).builder
          end
          if data.key? :selected_companys
            root << Ftr::SelectedCompanysType.new('selectedCompanys', data[:selected_companys]).builder
          end
          if data.key? :selected_ico
            root << Ftr::SelectedIcoType.new('selectedIco', data[:selected_ico]).builder
          end
          root << build_element('ftr:lastChanges', data[:last_changes]) if data.key? :last_changes

          root
        end
      end
    end
  end
end