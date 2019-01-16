module Pohoda
  module Parsers
    module Ofr
      class OfferHeaderType
        include ParserCore::BaseParser

        def id
          at 'ofr:id'
        end

        def id_attributes
          attributes_at 'ofr:id'
        end

        def offer_type
          at 'ofr:offerType'
        end

        def offer_type_attributes
          attributes_at 'ofr:offerType'
        end

        def number
          submodel_at(Typ::NumberType, 'ofr:number')
        end

        def date
          at 'ofr:date'
        end

        def date_attributes
          attributes_at 'ofr:date'
        end

        def valid_till
          at 'ofr:validTill'
        end

        def valid_till_attributes
          attributes_at 'ofr:validTill'
        end

        def text
          at 'ofr:text'
        end

        def text_attributes
          attributes_at 'ofr:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'ofr:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'ofr:myIdentity')
        end

        def price_level
          submodel_at(Typ::RefType, 'ofr:priceLevel')
        end

        def centre
          submodel_at(Typ::RefType, 'ofr:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'ofr:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'ofr:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'ofr:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'ofr:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['ofr:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'ofr:accountingPeriodMOSS'
        end

        def accounting_period_moss_attributes
          attributes_at 'ofr:accountingPeriodMOSS'
        end

        def is_executed
          at 'ofr:isExecuted'
        end

        def is_executed_attributes
          attributes_at 'ofr:isExecuted'
        end

        def details
          at 'ofr:details'
        end

        def details_attributes
          attributes_at 'ofr:details'
        end

        def note
          at 'ofr:note'
        end

        def note_attributes
          attributes_at 'ofr:note'
        end

        def int_note
          at 'ofr:intNote'
        end

        def int_note_attributes
          attributes_at 'ofr:intNote'
        end

        def hist_rate
          at 'ofr:histRate'
        end

        def hist_rate_attributes
          attributes_at 'ofr:histRate'
        end

        def mark_record
          at 'ofr:markRecord'
        end

        def mark_record_attributes
          attributes_at 'ofr:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['ofr:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['ofr:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ofr:id'
          hash[:id_attributes] = id_attributes if has? 'ofr:id'
          hash[:offer_type] = offer_type if has? 'ofr:offerType'
          hash[:offer_type_attributes] = offer_type_attributes if has? 'ofr:offerType'
          hash[:number] = number.to_h if has? 'ofr:number'
          hash[:date] = date if has? 'ofr:date'
          hash[:date_attributes] = date_attributes if has? 'ofr:date'
          hash[:valid_till] = valid_till if has? 'ofr:validTill'
          hash[:valid_till_attributes] = valid_till_attributes if has? 'ofr:validTill'
          hash[:text] = text if has? 'ofr:text'
          hash[:text_attributes] = text_attributes if has? 'ofr:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'ofr:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'ofr:myIdentity'
          hash[:price_level] = price_level.to_h if has? 'ofr:priceLevel'
          hash[:centre] = centre.to_h if has? 'ofr:centre'
          hash[:activity] = activity.to_h if has? 'ofr:activity'
          hash[:contract] = contract.to_h if has? 'ofr:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'ofr:regVATinEU'
          hash[:moss] = moss.to_h if has? 'ofr:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'ofr:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'ofr:accountingPeriodMOSS'
          hash[:accounting_period_moss_attributes] = accounting_period_moss_attributes if has? 'ofr:accountingPeriodMOSS'
          hash[:is_executed] = is_executed if has? 'ofr:isExecuted'
          hash[:is_executed_attributes] = is_executed_attributes if has? 'ofr:isExecuted'
          hash[:details] = details if has? 'ofr:details'
          hash[:details_attributes] = details_attributes if has? 'ofr:details'
          hash[:note] = note if has? 'ofr:note'
          hash[:note_attributes] = note_attributes if has? 'ofr:note'
          hash[:int_note] = int_note if has? 'ofr:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'ofr:intNote'
          hash[:hist_rate] = hist_rate if has? 'ofr:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'ofr:histRate'
          hash[:mark_record] = mark_record if has? 'ofr:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'ofr:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'ofr:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'ofr:parameters'

          hash
        end
      end
    end
  end
end