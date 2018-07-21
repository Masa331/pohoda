module Pohoda
  module Parsers
    module Con
      class ContractDescType
        include ParserCore::BaseParser

        def id
          at 'con:id'
        end

        def id_attributes
          attributes_at 'con:id'
        end

        def number
          submodel_at(Typ::NumberTypeContract, 'con:number')
        end

        def date_plan_start
          at 'con:datePlanStart'
        end

        def date_plan_start_attributes
          attributes_at 'con:datePlanStart'
        end

        def date_plan_delivery
          at 'con:datePlanDelivery'
        end

        def date_plan_delivery_attributes
          attributes_at 'con:datePlanDelivery'
        end

        def date_start
          at 'con:dateStart'
        end

        def date_start_attributes
          attributes_at 'con:dateStart'
        end

        def date_delivery
          at 'con:dateDelivery'
        end

        def date_delivery_attributes
          attributes_at 'con:dateDelivery'
        end

        def date_warranty
          at 'con:dateWarranty'
        end

        def date_warranty_attributes
          attributes_at 'con:dateWarranty'
        end

        def text
          at 'con:text'
        end

        def text_attributes
          attributes_at 'con:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'con:partnerIdentity')
        end

        def responsible_person
          submodel_at(Typ::RefTypeLong, 'con:responsiblePerson')
        end

        def contract_state
          at 'con:contractState'
        end

        def contract_state_attributes
          attributes_at 'con:contractState'
        end

        def ost1
          at 'con:ost1'
        end

        def ost1_attributes
          attributes_at 'con:ost1'
        end

        def ost2
          at 'con:ost2'
        end

        def ost2_attributes
          attributes_at 'con:ost2'
        end

        def note
          at 'con:note'
        end

        def note_attributes
          attributes_at 'con:note'
        end

        def mark_record
          at 'con:markRecord'
        end

        def mark_record_attributes
          attributes_at 'con:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['con:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['con:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'con:id'
          hash[:id_attributes] = id_attributes if has? 'con:id'
          hash[:number] = number.to_h if has? 'con:number'
          hash[:date_plan_start] = date_plan_start if has? 'con:datePlanStart'
          hash[:date_plan_start_attributes] = date_plan_start_attributes if has? 'con:datePlanStart'
          hash[:date_plan_delivery] = date_plan_delivery if has? 'con:datePlanDelivery'
          hash[:date_plan_delivery_attributes] = date_plan_delivery_attributes if has? 'con:datePlanDelivery'
          hash[:date_start] = date_start if has? 'con:dateStart'
          hash[:date_start_attributes] = date_start_attributes if has? 'con:dateStart'
          hash[:date_delivery] = date_delivery if has? 'con:dateDelivery'
          hash[:date_delivery_attributes] = date_delivery_attributes if has? 'con:dateDelivery'
          hash[:date_warranty] = date_warranty if has? 'con:dateWarranty'
          hash[:date_warranty_attributes] = date_warranty_attributes if has? 'con:dateWarranty'
          hash[:text] = text if has? 'con:text'
          hash[:text_attributes] = text_attributes if has? 'con:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'con:partnerIdentity'
          hash[:responsible_person] = responsible_person.to_h if has? 'con:responsiblePerson'
          hash[:contract_state] = contract_state if has? 'con:contractState'
          hash[:contract_state_attributes] = contract_state_attributes if has? 'con:contractState'
          hash[:ost1] = ost1 if has? 'con:ost1'
          hash[:ost1_attributes] = ost1_attributes if has? 'con:ost1'
          hash[:ost2] = ost2 if has? 'con:ost2'
          hash[:ost2_attributes] = ost2_attributes if has? 'con:ost2'
          hash[:note] = note if has? 'con:note'
          hash[:note_attributes] = note_attributes if has? 'con:note'
          hash[:mark_record] = mark_record if has? 'con:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'con:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'con:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'con:parameters'

          hash
        end
      end
    end
  end
end