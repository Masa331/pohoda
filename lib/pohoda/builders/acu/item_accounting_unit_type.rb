module Pohoda
  module Builders
    module Acu
      class ItemAccountingUnitType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acu:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('acu:year', data[:year], data[:year_attributes]) if data.key? :year
          root << build_element('acu:yearType', data[:year_type], data[:year_type_attributes]) if data.key? :year_type
          root << build_element('acu:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('acu:dateTo', data[:date_to], data[:date_to_attributes]) if data.key? :date_to
          root << build_element('acu:unitType', data[:unit_type], data[:unit_type_attributes]) if data.key? :unit_type
          root << build_element('acu:stateType', data[:state_type], data[:state_type_attributes]) if data.key? :state_type
          if data.key? :accounting_unit_identity
            root << Typ::MyAddress.new('acu:accountingUnitIdentity', data[:accounting_unit_identity]).builder
          end
          root << build_element('acu:dataFile', data[:data_file], data[:data_file_attributes]) if data.key? :data_file
          root << build_element('acu:key', data[:key], data[:key_attributes]) if data.key? :key

          root
        end
      end
    end
  end
end