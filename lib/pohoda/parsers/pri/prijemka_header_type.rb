module Pohoda
  module Parsers
    module Pri
      class PrijemkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'pri:id'
        end

        def id_attributes
          attributes_at 'pri:id'
        end

        def storno
          at 'pri:storno'
        end

        def storno_attributes
          attributes_at 'pri:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'pri:number')
        end

        def date
          at 'pri:date'
        end

        def date_attributes
          attributes_at 'pri:date'
        end

        def text
          at 'pri:text'
        end

        def text_attributes
          attributes_at 'pri:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'pri:partnerIdentity')
        end

        def acc
          at 'pri:acc'
        end

        def acc_attributes
          attributes_at 'pri:acc'
        end

        def sym_par
          at 'pri:symPar'
        end

        def sym_par_attributes
          attributes_at 'pri:symPar'
        end

        def is_executed
          at 'pri:isExecuted'
        end

        def is_executed_attributes
          attributes_at 'pri:isExecuted'
        end

        def is_delivered
          at 'pri:isDelivered'
        end

        def is_delivered_attributes
          attributes_at 'pri:isDelivered'
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

        def note_attributes
          attributes_at 'pri:note'
        end

        def int_note
          at 'pri:intNote'
        end

        def int_note_attributes
          attributes_at 'pri:intNote'
        end

        def hist_rate
          at 'pri:histRate'
        end

        def hist_rate_attributes
          attributes_at 'pri:histRate'
        end

        def mark_record
          at 'pri:markRecord'
        end

        def mark_record_attributes
          attributes_at 'pri:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['pri:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pri:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'pri:id'
          hash[:id_attributes] = id_attributes if has? 'pri:id'
          hash[:storno] = storno if has? 'pri:storno'
          hash[:storno_attributes] = storno_attributes if has? 'pri:storno'
          hash[:number] = number.to_h if has? 'pri:number'
          hash[:date] = date if has? 'pri:date'
          hash[:date_attributes] = date_attributes if has? 'pri:date'
          hash[:text] = text if has? 'pri:text'
          hash[:text_attributes] = text_attributes if has? 'pri:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'pri:partnerIdentity'
          hash[:acc] = acc if has? 'pri:acc'
          hash[:acc_attributes] = acc_attributes if has? 'pri:acc'
          hash[:sym_par] = sym_par if has? 'pri:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'pri:symPar'
          hash[:is_executed] = is_executed if has? 'pri:isExecuted'
          hash[:is_executed_attributes] = is_executed_attributes if has? 'pri:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'pri:isDelivered'
          hash[:is_delivered_attributes] = is_delivered_attributes if has? 'pri:isDelivered'
          hash[:centre] = centre.to_h if has? 'pri:centre'
          hash[:activity] = activity.to_h if has? 'pri:activity'
          hash[:contract] = contract.to_h if has? 'pri:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'pri:regVATinEU'
          hash[:note] = note if has? 'pri:note'
          hash[:note_attributes] = note_attributes if has? 'pri:note'
          hash[:int_note] = int_note if has? 'pri:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'pri:intNote'
          hash[:hist_rate] = hist_rate if has? 'pri:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'pri:histRate'
          hash[:mark_record] = mark_record if has? 'pri:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'pri:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'pri:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'pri:parameters'

          hash
        end
      end
    end
  end
end