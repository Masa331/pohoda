module Pohoda
  module Parsers
    module Vyr
      class VyrobaHeaderType
        include ParserCore::BaseParser

        def id
          at 'vyr:id'
        end

        def id_attributes
          attributes_at 'vyr:id'
        end

        def number
          submodel_at(Typ::NumberType, 'vyr:number')
        end

        def date
          at 'vyr:date'
        end

        def date_attributes
          attributes_at 'vyr:date'
        end

        def time
          at 'vyr:time'
        end

        def time_attributes
          attributes_at 'vyr:time'
        end

        def date_of_receipt
          at 'vyr:dateOfReceipt'
        end

        def date_of_receipt_attributes
          attributes_at 'vyr:dateOfReceipt'
        end

        def time_of_receipt
          at 'vyr:timeOfReceipt'
        end

        def time_of_receipt_attributes
          attributes_at 'vyr:timeOfReceipt'
        end

        def sym_par
          at 'vyr:symPar'
        end

        def sym_par_attributes
          attributes_at 'vyr:symPar'
        end

        def acc
          at 'vyr:acc'
        end

        def acc_attributes
          attributes_at 'vyr:acc'
        end

        def text
          at 'vyr:text'
        end

        def text_attributes
          attributes_at 'vyr:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'vyr:partnerIdentity')
        end

        def centre_source
          submodel_at(Typ::RefType, 'vyr:centreSource')
        end

        def centre_destination
          submodel_at(Typ::RefType, 'vyr:centreDestination')
        end

        def activity
          submodel_at(Typ::RefType, 'vyr:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vyr:contract')
        end

        def note
          at 'vyr:note'
        end

        def note_attributes
          attributes_at 'vyr:note'
        end

        def int_note
          at 'vyr:intNote'
        end

        def int_note_attributes
          attributes_at 'vyr:intNote'
        end

        def mark_record
          at 'vyr:markRecord'
        end

        def mark_record_attributes
          attributes_at 'vyr:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['vyr:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['vyr:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'vyr:id'
          hash[:id_attributes] = id_attributes if has? 'vyr:id'
          hash[:number] = number.to_h if has? 'vyr:number'
          hash[:date] = date if has? 'vyr:date'
          hash[:date_attributes] = date_attributes if has? 'vyr:date'
          hash[:time] = time if has? 'vyr:time'
          hash[:time_attributes] = time_attributes if has? 'vyr:time'
          hash[:date_of_receipt] = date_of_receipt if has? 'vyr:dateOfReceipt'
          hash[:date_of_receipt_attributes] = date_of_receipt_attributes if has? 'vyr:dateOfReceipt'
          hash[:time_of_receipt] = time_of_receipt if has? 'vyr:timeOfReceipt'
          hash[:time_of_receipt_attributes] = time_of_receipt_attributes if has? 'vyr:timeOfReceipt'
          hash[:sym_par] = sym_par if has? 'vyr:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'vyr:symPar'
          hash[:acc] = acc if has? 'vyr:acc'
          hash[:acc_attributes] = acc_attributes if has? 'vyr:acc'
          hash[:text] = text if has? 'vyr:text'
          hash[:text_attributes] = text_attributes if has? 'vyr:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'vyr:partnerIdentity'
          hash[:centre_source] = centre_source.to_h if has? 'vyr:centreSource'
          hash[:centre_destination] = centre_destination.to_h if has? 'vyr:centreDestination'
          hash[:activity] = activity.to_h if has? 'vyr:activity'
          hash[:contract] = contract.to_h if has? 'vyr:contract'
          hash[:note] = note if has? 'vyr:note'
          hash[:note_attributes] = note_attributes if has? 'vyr:note'
          hash[:int_note] = int_note if has? 'vyr:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'vyr:intNote'
          hash[:mark_record] = mark_record if has? 'vyr:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'vyr:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'vyr:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'vyr:parameters'

          hash
        end
      end
    end
  end
end