module Pohoda
  module Parsers
    module Pri
      class PrijemkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'pri:id'
        end

        def storno
          at 'pri:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'pri:number')
        end

        def date
          at 'pri:date'
        end

        def text
          at 'pri:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'pri:partnerIdentity')
        end

        def acc
          at 'pri:acc'
        end

        def sym_par
          at 'pri:symPar'
        end

        def is_executed
          at 'pri:isExecuted'
        end

        def is_delivered
          at 'pri:isDelivered'
        end

        def centre
          submodel_at(Typ::RefType, 'pri:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pri:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pri:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'pri:regVATinEU')
        end

        def note
          at 'pri:note'
        end

        def int_note
          at 'pri:intNote'
        end

        def mark_record
          at 'pri:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'pri:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'pri:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'pri:id'
          hash[:storno] = storno if has? 'pri:storno'
          hash[:number] = number.to_h_with_attrs if has? 'pri:number'
          hash[:date] = date if has? 'pri:date'
          hash[:text] = text if has? 'pri:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'pri:partnerIdentity'
          hash[:acc] = acc if has? 'pri:acc'
          hash[:sym_par] = sym_par if has? 'pri:symPar'
          hash[:is_executed] = is_executed if has? 'pri:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'pri:isDelivered'
          hash[:centre] = centre.to_h_with_attrs if has? 'pri:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'pri:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'pri:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'pri:regVATinEU'
          hash[:note] = note if has? 'pri:note'
          hash[:int_note] = int_note if has? 'pri:intNote'
          hash[:mark_record] = mark_record if has? 'pri:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'pri:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'pri:parameters'

          hash
        end
      end
    end
  end
end