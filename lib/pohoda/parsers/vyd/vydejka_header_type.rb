module Pohoda
  module Parsers
    module Vyd
      class VydejkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'vyd:id'
        end

        def storno
          at 'vyd:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'vyd:number')
        end

        def date
          at 'vyd:date'
        end

        def number_order
          at 'vyd:numberOrder'
        end

        def date_order
          at 'vyd:dateOrder'
        end

        def text
          at 'vyd:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'vyd:partnerIdentity')
        end

        def acc
          at 'vyd:acc'
        end

        def sym_par
          at 'vyd:symPar'
        end

        def price_level
          submodel_at(Typ::RefType, 'vyd:priceLevel')
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'vyd:paymentType')
        end

        def is_executed
          at 'vyd:isExecuted'
        end

        def is_delivered
          at 'vyd:isDelivered'
        end

        def centre
          submodel_at(Typ::RefType, 'vyd:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'vyd:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vyd:contract')
        end

        def carrier
          submodel_at(Typ::RefType, 'vyd:carrier')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'vyd:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'vyd:MOSS')
        end

        def evidentiary_resources_moss
          submodel_at(Typ::ResourcesMOSStype, 'vyd:evidentiaryResourcesMOSS')
        end

        def accounting_period_moss
          at 'vyd:accountingPeriodMOSS'
        end

        def note
          at 'vyd:note'
        end

        def int_note
          at 'vyd:intNote'
        end

        def mark_record
          at 'vyd:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'vyd:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'vyd:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'vyd:id'
          hash[:storno] = storno if has? 'vyd:storno'
          hash[:number] = number.to_h_with_attrs if has? 'vyd:number'
          hash[:date] = date if has? 'vyd:date'
          hash[:number_order] = number_order if has? 'vyd:numberOrder'
          hash[:date_order] = date_order if has? 'vyd:dateOrder'
          hash[:text] = text if has? 'vyd:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'vyd:partnerIdentity'
          hash[:acc] = acc if has? 'vyd:acc'
          hash[:sym_par] = sym_par if has? 'vyd:symPar'
          hash[:price_level] = price_level.to_h_with_attrs if has? 'vyd:priceLevel'
          hash[:payment_type] = payment_type.to_h_with_attrs if has? 'vyd:paymentType'
          hash[:is_executed] = is_executed if has? 'vyd:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'vyd:isDelivered'
          hash[:centre] = centre.to_h_with_attrs if has? 'vyd:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'vyd:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'vyd:contract'
          hash[:carrier] = carrier.to_h_with_attrs if has? 'vyd:carrier'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'vyd:regVATinEU'
          hash[:moss] = moss.to_h_with_attrs if has? 'vyd:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss.to_h_with_attrs if has? 'vyd:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'vyd:accountingPeriodMOSS'
          hash[:note] = note if has? 'vyd:note'
          hash[:int_note] = int_note if has? 'vyd:intNote'
          hash[:mark_record] = mark_record if has? 'vyd:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'vyd:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'vyd:parameters'

          hash
        end
      end
    end
  end
end