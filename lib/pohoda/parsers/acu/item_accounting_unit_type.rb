module Pohoda
  module Parsers
    module Acu
      class ItemAccountingUnitType
        include ParserCore::BaseParser

        def id
          at 'acu:id'
        end

        def year
          at 'acu:year'
        end

        def year_type
          at 'acu:yearType'
        end

        def date_from
          at 'acu:dateFrom'
        end

        def date_to
          at 'acu:dateTo'
        end

        def unit_type
          at 'acu:unitType'
        end

        def state_type
          at 'acu:stateType'
        end

        def accounting_unit_identity
          submodel_at(Typ::MyAddress, 'acu:accountingUnitIdentity')
        end

        def data_file
          at 'acu:dataFile'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'acu:id'
          hash[:year] = year if has? 'acu:year'
          hash[:year_type] = year_type if has? 'acu:yearType'
          hash[:date_from] = date_from if has? 'acu:dateFrom'
          hash[:date_to] = date_to if has? 'acu:dateTo'
          hash[:unit_type] = unit_type if has? 'acu:unitType'
          hash[:state_type] = state_type if has? 'acu:stateType'
          hash[:accounting_unit_identity] = accounting_unit_identity.to_h_with_attrs if has? 'acu:accountingUnitIdentity'
          hash[:data_file] = data_file if has? 'acu:dataFile'

          hash
        end
      end
    end
  end
end