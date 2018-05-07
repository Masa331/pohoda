module Pohoda
  module Parsers
    module Ofr
      class OfferHeaderType
        include ParserCore::BaseParser

        def id
          at 'ofr:id'
        end

        def offer_type
          at 'ofr:offerType'
        end

        def number
          submodel_at(Typ::NumberType, 'ofr:number')
        end

        def date
          at 'ofr:date'
        end

        def valid_till
          at 'ofr:validTill'
        end

        def text
          at 'ofr:text'
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
          submodel_at(Typ::ResourcesMOSStype, 'ofr:evidentiaryResourcesMOSS')
        end

        def accounting_period_moss
          at 'ofr:accountingPeriodMOSS'
        end

        def is_executed
          at 'ofr:isExecuted'
        end

        def details
          at 'ofr:details'
        end

        def note
          at 'ofr:note'
        end

        def int_note
          at 'ofr:intNote'
        end

        def mark_record
          at 'ofr:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'ofr:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'ofr:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ofr:id'
          hash[:offer_type] = offer_type if has? 'ofr:offerType'
          hash[:number] = number.to_h_with_attrs if has? 'ofr:number'
          hash[:date] = date if has? 'ofr:date'
          hash[:valid_till] = valid_till if has? 'ofr:validTill'
          hash[:text] = text if has? 'ofr:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'ofr:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'ofr:myIdentity'
          hash[:price_level] = price_level.to_h_with_attrs if has? 'ofr:priceLevel'
          hash[:centre] = centre.to_h_with_attrs if has? 'ofr:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'ofr:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'ofr:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'ofr:regVATinEU'
          hash[:moss] = moss.to_h_with_attrs if has? 'ofr:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss.to_h_with_attrs if has? 'ofr:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'ofr:accountingPeriodMOSS'
          hash[:is_executed] = is_executed if has? 'ofr:isExecuted'
          hash[:details] = details if has? 'ofr:details'
          hash[:note] = note if has? 'ofr:note'
          hash[:int_note] = int_note if has? 'ofr:intNote'
          hash[:mark_record] = mark_record if has? 'ofr:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'ofr:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'ofr:parameters'

          hash
        end
      end
    end
  end
end