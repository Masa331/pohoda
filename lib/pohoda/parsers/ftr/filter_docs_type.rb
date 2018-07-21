module Pohoda
  module Parsers
    module Ftr
      class FilterDocsType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def date_from
          at 'ftr:dateFrom'
        end

        def date_from_attributes
          attributes_at 'ftr:dateFrom'
        end

        def date_till
          at 'ftr:dateTill'
        end

        def date_till_attributes
          attributes_at 'ftr:dateTill'
        end

        def selected_numbers
          array_of_at(Typ::NumberType, ['ftr:selectedNumbers', 'ftr:number'])
        end

        def selected_companys
          array_of_at(Typ::StringCompany, ['ftr:selectedCompanys', 'ftr:company'])
        end

        def selected_ico
          array_of_at(Typ::IcoType, ['ftr:selectedIco', 'ftr:ico'])
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def last_changes_attributes
          attributes_at 'ftr:lastChanges'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:date_from] = date_from if has? 'ftr:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'ftr:dateFrom'
          hash[:date_till] = date_till if has? 'ftr:dateTill'
          hash[:date_till_attributes] = date_till_attributes if has? 'ftr:dateTill'
          hash[:selected_numbers] = selected_numbers.map(&:to_h) if has? 'ftr:selectedNumbers'
          hash[:selected_companys] = selected_companys.map(&:to_h) if has? 'ftr:selectedCompanys'
          hash[:selected_ico] = selected_ico.map(&:to_h) if has? 'ftr:selectedIco'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'
          hash[:last_changes_attributes] = last_changes_attributes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end