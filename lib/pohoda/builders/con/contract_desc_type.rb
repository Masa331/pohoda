module Pohoda
  module Builders
    module Con
      class ContractDescType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('con:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :number
            root << Typ::NumberTypeContract.new('con:number', data[:number]).builder
          end
          root << build_element('con:datePlanStart', data[:date_plan_start], data[:date_plan_start_attributes]) if data.key? :date_plan_start
          root << build_element('con:datePlanDelivery', data[:date_plan_delivery], data[:date_plan_delivery_attributes]) if data.key? :date_plan_delivery
          root << build_element('con:dateStart', data[:date_start], data[:date_start_attributes]) if data.key? :date_start
          root << build_element('con:dateDelivery', data[:date_delivery], data[:date_delivery_attributes]) if data.key? :date_delivery
          root << build_element('con:dateWarranty', data[:date_warranty], data[:date_warranty_attributes]) if data.key? :date_warranty
          root << build_element('con:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('con:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :responsible_person
            root << Typ::RefTypeLong.new('con:responsiblePerson', data[:responsible_person]).builder
          end
          root << build_element('con:contractState', data[:contract_state], data[:contract_state_attributes]) if data.key? :contract_state
          root << build_element('con:ost1', data[:ost1], data[:ost1_attributes]) if data.key? :ost1
          root << build_element('con:ost2', data[:ost2], data[:ost2_attributes]) if data.key? :ost2
          root << build_element('con:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('con:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('con:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('con:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end