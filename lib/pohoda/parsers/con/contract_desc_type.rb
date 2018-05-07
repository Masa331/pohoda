module Pohoda
  module Parsers
    module Con
      class ContractDescType
        include ParserCore::BaseParser

        def id
          at 'con:id'
        end

        def number
          submodel_at(Typ::NumberTypeContract, 'con:number')
        end

        def date_plan_start
          at 'con:datePlanStart'
        end

        def date_plan_delivery
          at 'con:datePlanDelivery'
        end

        def date_start
          at 'con:dateStart'
        end

        def date_delivery
          at 'con:dateDelivery'
        end

        def date_warranty
          at 'con:dateWarranty'
        end

        def text
          at 'con:text'
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

        def ost1
          at 'con:ost1'
        end

        def ost2
          at 'con:ost2'
        end

        def note
          at 'con:note'
        end

        def mark_record
          at 'con:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['con:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['con:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'con:id'
          hash[:number] = number.to_h_with_attrs if has? 'con:number'
          hash[:date_plan_start] = date_plan_start if has? 'con:datePlanStart'
          hash[:date_plan_delivery] = date_plan_delivery if has? 'con:datePlanDelivery'
          hash[:date_start] = date_start if has? 'con:dateStart'
          hash[:date_delivery] = date_delivery if has? 'con:dateDelivery'
          hash[:date_warranty] = date_warranty if has? 'con:dateWarranty'
          hash[:text] = text if has? 'con:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'con:partnerIdentity'
          hash[:responsible_person] = responsible_person.to_h_with_attrs if has? 'con:responsiblePerson'
          hash[:contract_state] = contract_state if has? 'con:contractState'
          hash[:ost1] = ost1 if has? 'con:ost1'
          hash[:ost2] = ost2 if has? 'con:ost2'
          hash[:note] = note if has? 'con:note'
          hash[:mark_record] = mark_record if has? 'con:markRecord'
          hash[:labels] = labels.map(&:to_h_with_attrs) if has? 'con:labels'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'con:parameters'

          hash
        end
      end
    end
  end
end