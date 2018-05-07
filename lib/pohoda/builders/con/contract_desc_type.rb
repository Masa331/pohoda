module Pohoda
  module Builders
    module Con
      class ContractDescType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('con:id', data[:id]) if data.key? :id
          if data.key? :number
            root << Typ::NumberTypeContract.new('number', data[:number]).builder
          end
          root << build_element('con:datePlanStart', data[:date_plan_start]) if data.key? :date_plan_start
          root << build_element('con:datePlanDelivery', data[:date_plan_delivery]) if data.key? :date_plan_delivery
          root << build_element('con:dateStart', data[:date_start]) if data.key? :date_start
          root << build_element('con:dateDelivery', data[:date_delivery]) if data.key? :date_delivery
          root << build_element('con:dateWarranty', data[:date_warranty]) if data.key? :date_warranty
          root << build_element('con:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :responsible_person
            root << Typ::RefTypeLong.new('responsiblePerson', data[:responsible_person]).builder
          end
          root << build_element('con:contractState', data[:contract_state]) if data.key? :contract_state
          root << build_element('con:ost1', data[:ost1]) if data.key? :ost1
          root << build_element('con:ost2', data[:ost2]) if data.key? :ost2
          root << build_element('con:note', data[:note]) if data.key? :note
          root << build_element('con:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end