module Pohoda
  module Builders
    module Acu
      class ItemAccountingUnitType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('acu:id', data[:id]) if data.key? :id
          root << build_element('acu:year', data[:year]) if data.key? :year
          root << build_element('acu:yearType', data[:year_type]) if data.key? :year_type
          root << build_element('acu:dateFrom', data[:date_from]) if data.key? :date_from
          root << build_element('acu:dateTo', data[:date_to]) if data.key? :date_to
          root << build_element('acu:unitType', data[:unit_type]) if data.key? :unit_type
          root << build_element('acu:stateType', data[:state_type]) if data.key? :state_type
          if data.key? :accounting_unit_identity
            root << Typ::MyAddress.new('accountingUnitIdentity', data[:accounting_unit_identity]).builder
          end
          root << build_element('acu:dataFile', data[:data_file]) if data.key? :data_file

          root
        end
      end
    end
  end
end