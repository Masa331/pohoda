module Pohoda
  module Parsers
    module Enq
      class EnquiryHeaderType
        include ParserCore::BaseParser

        def id
          at 'enq:id'
        end

        def id_attributes
          attributes_at 'enq:id'
        end

        def enquiry_type
          at 'enq:enquiryType'
        end

        def enquiry_type_attributes
          attributes_at 'enq:enquiryType'
        end

        def number
          submodel_at(Typ::NumberType, 'enq:number')
        end

        def date
          at 'enq:date'
        end

        def date_attributes
          attributes_at 'enq:date'
        end

        def valid_till
          at 'enq:validTill'
        end

        def valid_till_attributes
          attributes_at 'enq:validTill'
        end

        def text
          at 'enq:text'
        end

        def text_attributes
          attributes_at 'enq:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'enq:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'enq:myIdentity')
        end

        def price_level
          submodel_at(Typ::RefType, 'enq:priceLevel')
        end

        def centre
          submodel_at(Typ::RefType, 'enq:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'enq:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'enq:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'enq:regVATinEU')
        end

        def is_executed
          at 'enq:isExecuted'
        end

        def is_executed_attributes
          attributes_at 'enq:isExecuted'
        end

        def details
          at 'enq:details'
        end

        def details_attributes
          attributes_at 'enq:details'
        end

        def note
          at 'enq:note'
        end

        def note_attributes
          attributes_at 'enq:note'
        end

        def int_note
          at 'enq:intNote'
        end

        def int_note_attributes
          attributes_at 'enq:intNote'
        end

        def hist_rate
          at 'enq:histRate'
        end

        def hist_rate_attributes
          attributes_at 'enq:histRate'
        end

        def mark_record
          at 'enq:markRecord'
        end

        def mark_record_attributes
          attributes_at 'enq:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['enq:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['enq:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'enq:id'
          hash[:id_attributes] = id_attributes if has? 'enq:id'
          hash[:enquiry_type] = enquiry_type if has? 'enq:enquiryType'
          hash[:enquiry_type_attributes] = enquiry_type_attributes if has? 'enq:enquiryType'
          hash[:number] = number.to_h if has? 'enq:number'
          hash[:date] = date if has? 'enq:date'
          hash[:date_attributes] = date_attributes if has? 'enq:date'
          hash[:valid_till] = valid_till if has? 'enq:validTill'
          hash[:valid_till_attributes] = valid_till_attributes if has? 'enq:validTill'
          hash[:text] = text if has? 'enq:text'
          hash[:text_attributes] = text_attributes if has? 'enq:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'enq:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'enq:myIdentity'
          hash[:price_level] = price_level.to_h if has? 'enq:priceLevel'
          hash[:centre] = centre.to_h if has? 'enq:centre'
          hash[:activity] = activity.to_h if has? 'enq:activity'
          hash[:contract] = contract.to_h if has? 'enq:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'enq:regVATinEU'
          hash[:is_executed] = is_executed if has? 'enq:isExecuted'
          hash[:is_executed_attributes] = is_executed_attributes if has? 'enq:isExecuted'
          hash[:details] = details if has? 'enq:details'
          hash[:details_attributes] = details_attributes if has? 'enq:details'
          hash[:note] = note if has? 'enq:note'
          hash[:note_attributes] = note_attributes if has? 'enq:note'
          hash[:int_note] = int_note if has? 'enq:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'enq:intNote'
          hash[:hist_rate] = hist_rate if has? 'enq:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'enq:histRate'
          hash[:mark_record] = mark_record if has? 'enq:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'enq:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'enq:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'enq:parameters'

          hash
        end
      end
    end
  end
end