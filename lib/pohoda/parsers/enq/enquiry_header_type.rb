module Pohoda
  module Parsers
    module Enq
      class EnquiryHeaderType
        include ParserCore::BaseParser

        def id
          at 'enq:id'
        end

        def enquiry_type
          at 'enq:enquiryType'
        end

        def number
          submodel_at(Typ::NumberType, 'enq:number')
        end

        def date
          at 'enq:date'
        end

        def valid_till
          at 'enq:validTill'
        end

        def text
          at 'enq:text'
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

        def details
          at 'enq:details'
        end

        def note
          at 'enq:note'
        end

        def int_note
          at 'enq:intNote'
        end

        def mark_record
          at 'enq:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'enq:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'enq:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'enq:id'
          hash[:enquiry_type] = enquiry_type if has? 'enq:enquiryType'
          hash[:number] = number.to_h_with_attrs if has? 'enq:number'
          hash[:date] = date if has? 'enq:date'
          hash[:valid_till] = valid_till if has? 'enq:validTill'
          hash[:text] = text if has? 'enq:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'enq:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'enq:myIdentity'
          hash[:price_level] = price_level.to_h_with_attrs if has? 'enq:priceLevel'
          hash[:centre] = centre.to_h_with_attrs if has? 'enq:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'enq:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'enq:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'enq:regVATinEU'
          hash[:is_executed] = is_executed if has? 'enq:isExecuted'
          hash[:details] = details if has? 'enq:details'
          hash[:note] = note if has? 'enq:note'
          hash[:int_note] = int_note if has? 'enq:intNote'
          hash[:mark_record] = mark_record if has? 'enq:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'enq:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'enq:parameters'

          hash
        end
      end
    end
  end
end