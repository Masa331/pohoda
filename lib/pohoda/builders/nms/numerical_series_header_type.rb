module Pohoda
  module Builders
    module Nms
      class NumericalSeriesHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('nms:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('nms:extId', data[:ext_id]).builder
          end
          root << build_element('nms:prefix', data[:prefix], data[:prefix_attributes]) if data.key? :prefix
          root << build_element('nms:number', data[:number], data[:number_attributes]) if data.key? :number
          root << build_element('nms:topNumber', data[:top_number], data[:top_number_attributes]) if data.key? :top_number
          root << build_element('nms:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('nms:agenda', data[:agenda], data[:agenda_attributes]) if data.key? :agenda
          root << build_element('nms:typeOfDocument', data[:type_of_document], data[:type_of_document_attributes]) if data.key? :type_of_document
          if data.key? :cash_account
            root << Typ::RefType.new('nms:cashAccount', data[:cash_account]).builder
          end
          if data.key? :cashbox
            root << Typ::RefType.new('nms:cashbox', data[:cashbox]).builder
          end
          root << build_element('nms:period', data[:period], data[:period_attributes]) if data.key? :period
          if data.key? :period_account_unit
            root << Nms::PeriodAccountUnitType.new('nms:periodAccountUnit', data[:period_account_unit]).builder
          end
          if data.key? :unit_pzd
            root << Typ::RefType.new('nms:unitPZD', data[:unit_pzd]).builder
          end
          root << build_element('nms:year', data[:year], data[:year_attributes]) if data.key? :year
          root << build_element('nms:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('nms:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :parameters
            element = Ox::Element.new('nms:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end