module Pohoda
  module Parsers
    module Pre
      class PrevodkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'pre:id'
        end

        def id_attributes
          attributes_at 'pre:id'
        end

        def number
          submodel_at(Typ::NumberType, 'pre:number')
        end

        def date
          at 'pre:date'
        end

        def date_attributes
          attributes_at 'pre:date'
        end

        def time
          at 'pre:time'
        end

        def time_attributes
          attributes_at 'pre:time'
        end

        def date_of_receipt
          at 'pre:dateOfReceipt'
        end

        def date_of_receipt_attributes
          attributes_at 'pre:dateOfReceipt'
        end

        def time_of_receipt
          at 'pre:timeOfReceipt'
        end

        def time_of_receipt_attributes
          attributes_at 'pre:timeOfReceipt'
        end

        def sym_par
          at 'pre:symPar'
        end

        def sym_par_attributes
          attributes_at 'pre:symPar'
        end

        def store
          submodel_at(Typ::RefType, 'pre:store')
        end

        def text
          at 'pre:text'
        end

        def text_attributes
          attributes_at 'pre:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'pre:partnerIdentity')
        end

        def centre_source
          submodel_at(Typ::RefType, 'pre:centreSource')
        end

        def centre_destination
          submodel_at(Typ::RefType, 'pre:centreDestination')
        end

        def activity
          submodel_at(Typ::RefType, 'pre:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pre:contract')
        end

        def note
          at 'pre:note'
        end

        def note_attributes
          attributes_at 'pre:note'
        end

        def int_note
          at 'pre:intNote'
        end

        def int_note_attributes
          attributes_at 'pre:intNote'
        end

        def mark_record
          at 'pre:markRecord'
        end

        def mark_record_attributes
          attributes_at 'pre:markRecord'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pre:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'pre:id'
          hash[:id_attributes] = id_attributes if has? 'pre:id'
          hash[:number] = number.to_h if has? 'pre:number'
          hash[:date] = date if has? 'pre:date'
          hash[:date_attributes] = date_attributes if has? 'pre:date'
          hash[:time] = time if has? 'pre:time'
          hash[:time_attributes] = time_attributes if has? 'pre:time'
          hash[:date_of_receipt] = date_of_receipt if has? 'pre:dateOfReceipt'
          hash[:date_of_receipt_attributes] = date_of_receipt_attributes if has? 'pre:dateOfReceipt'
          hash[:time_of_receipt] = time_of_receipt if has? 'pre:timeOfReceipt'
          hash[:time_of_receipt_attributes] = time_of_receipt_attributes if has? 'pre:timeOfReceipt'
          hash[:sym_par] = sym_par if has? 'pre:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'pre:symPar'
          hash[:store] = store.to_h if has? 'pre:store'
          hash[:text] = text if has? 'pre:text'
          hash[:text_attributes] = text_attributes if has? 'pre:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'pre:partnerIdentity'
          hash[:centre_source] = centre_source.to_h if has? 'pre:centreSource'
          hash[:centre_destination] = centre_destination.to_h if has? 'pre:centreDestination'
          hash[:activity] = activity.to_h if has? 'pre:activity'
          hash[:contract] = contract.to_h if has? 'pre:contract'
          hash[:note] = note if has? 'pre:note'
          hash[:note_attributes] = note_attributes if has? 'pre:note'
          hash[:int_note] = int_note if has? 'pre:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'pre:intNote'
          hash[:mark_record] = mark_record if has? 'pre:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'pre:markRecord'
          hash[:parameters] = parameters.map(&:to_h) if has? 'pre:parameters'

          hash
        end
      end
    end
  end
end