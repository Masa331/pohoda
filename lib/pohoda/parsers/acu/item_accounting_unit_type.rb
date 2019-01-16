module Pohoda
  module Parsers
    module Acu
      class ItemAccountingUnitType
        include ParserCore::BaseParser

        def id
          at 'acu:id'
        end

        def id_attributes
          attributes_at 'acu:id'
        end

        def year
          at 'acu:year'
        end

        def year_attributes
          attributes_at 'acu:year'
        end

        def year_type
          at 'acu:yearType'
        end

        def year_type_attributes
          attributes_at 'acu:yearType'
        end

        def date_from
          at 'acu:dateFrom'
        end

        def date_from_attributes
          attributes_at 'acu:dateFrom'
        end

        def date_to
          at 'acu:dateTo'
        end

        def date_to_attributes
          attributes_at 'acu:dateTo'
        end

        def unit_type
          at 'acu:unitType'
        end

        def unit_type_attributes
          attributes_at 'acu:unitType'
        end

        def state_type
          at 'acu:stateType'
        end

        def state_type_attributes
          attributes_at 'acu:stateType'
        end

        def accounting_unit_identity
          submodel_at(Typ::MyAddress, 'acu:accountingUnitIdentity')
        end

        def data_file
          at 'acu:dataFile'
        end

        def data_file_attributes
          attributes_at 'acu:dataFile'
        end

        def key
          at 'acu:key'
        end

        def key_attributes
          attributes_at 'acu:key'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'acu:id'
          hash[:id_attributes] = id_attributes if has? 'acu:id'
          hash[:year] = year if has? 'acu:year'
          hash[:year_attributes] = year_attributes if has? 'acu:year'
          hash[:year_type] = year_type if has? 'acu:yearType'
          hash[:year_type_attributes] = year_type_attributes if has? 'acu:yearType'
          hash[:date_from] = date_from if has? 'acu:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'acu:dateFrom'
          hash[:date_to] = date_to if has? 'acu:dateTo'
          hash[:date_to_attributes] = date_to_attributes if has? 'acu:dateTo'
          hash[:unit_type] = unit_type if has? 'acu:unitType'
          hash[:unit_type_attributes] = unit_type_attributes if has? 'acu:unitType'
          hash[:state_type] = state_type if has? 'acu:stateType'
          hash[:state_type_attributes] = state_type_attributes if has? 'acu:stateType'
          hash[:accounting_unit_identity] = accounting_unit_identity.to_h if has? 'acu:accountingUnitIdentity'
          hash[:data_file] = data_file if has? 'acu:dataFile'
          hash[:data_file_attributes] = data_file_attributes if has? 'acu:dataFile'
          hash[:key] = key if has? 'acu:key'
          hash[:key_attributes] = key_attributes if has? 'acu:key'

          hash
        end
      end
    end
  end
end