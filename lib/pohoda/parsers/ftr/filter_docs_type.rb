module Pohoda
  module Parsers
    module Ftr
      class FilterDocsType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def date_from
          at 'ftr:dateFrom'
        end

        def date_till
          at 'ftr:dateTill'
        end

        def selected_numbers
          submodel_at(Ftr::SelectedNumbersType, 'ftr:selectedNumbers')
        end

        def selected_companys
          submodel_at(Ftr::SelectedCompanysType, 'ftr:selectedCompanys')
        end

        def selected_ico
          submodel_at(Ftr::SelectedIcoType, 'ftr:selectedIco')
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:date_from] = date_from if has? 'ftr:dateFrom'
          hash[:date_till] = date_till if has? 'ftr:dateTill'
          hash[:selected_numbers] = selected_numbers.to_h_with_attrs if has? 'ftr:selectedNumbers'
          hash[:selected_companys] = selected_companys.to_h_with_attrs if has? 'ftr:selectedCompanys'
          hash[:selected_ico] = selected_ico.to_h_with_attrs if has? 'ftr:selectedIco'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end