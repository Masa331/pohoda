module Pohoda
  module Parsers
    module Vyd
      class VydejkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'vyd:id'
        end

        def id_attributes
          attributes_at 'vyd:id'
        end

        def storno
          at 'vyd:storno'
        end

        def storno_attributes
          attributes_at 'vyd:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'vyd:number')
        end

        def date
          at 'vyd:date'
        end

        def date_attributes
          attributes_at 'vyd:date'
        end

        def number_order
          at 'vyd:numberOrder'
        end

        def number_order_attributes
          attributes_at 'vyd:numberOrder'
        end

        def date_order
          at 'vyd:dateOrder'
        end

        def date_order_attributes
          attributes_at 'vyd:dateOrder'
        end

        def text
          at 'vyd:text'
        end

        def text_attributes
          attributes_at 'vyd:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'vyd:partnerIdentity')
        end

        def acc
          at 'vyd:acc'
        end

        def acc_attributes
          attributes_at 'vyd:acc'
        end

        def sym_par
          at 'vyd:symPar'
        end

        def sym_par_attributes
          attributes_at 'vyd:symPar'
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

        def is_executed_attributes
          attributes_at 'vyd:isExecuted'
        end

        def is_delivered
          at 'vyd:isDelivered'
        end

        def is_delivered_attributes
          attributes_at 'vyd:isDelivered'
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
          submodel_at(Typ::CarrierType, 'vyd:carrier')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'vyd:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'vyd:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['vyd:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'vyd:accountingPeriodMOSS'
        end

        def accounting_period_moss_attributes
          attributes_at 'vyd:accountingPeriodMOSS'
        end

        def note
          at 'vyd:note'
        end

        def note_attributes
          attributes_at 'vyd:note'
        end

        def int_note
          at 'vyd:intNote'
        end

        def int_note_attributes
          attributes_at 'vyd:intNote'
        end

        def hist_rate
          at 'vyd:histRate'
        end

        def hist_rate_attributes
          attributes_at 'vyd:histRate'
        end

        def mark_record
          at 'vyd:markRecord'
        end

        def mark_record_attributes
          attributes_at 'vyd:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['vyd:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['vyd:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'vyd:id'
          hash[:id_attributes] = id_attributes if has? 'vyd:id'
          hash[:storno] = storno if has? 'vyd:storno'
          hash[:storno_attributes] = storno_attributes if has? 'vyd:storno'
          hash[:number] = number.to_h if has? 'vyd:number'
          hash[:date] = date if has? 'vyd:date'
          hash[:date_attributes] = date_attributes if has? 'vyd:date'
          hash[:number_order] = number_order if has? 'vyd:numberOrder'
          hash[:number_order_attributes] = number_order_attributes if has? 'vyd:numberOrder'
          hash[:date_order] = date_order if has? 'vyd:dateOrder'
          hash[:date_order_attributes] = date_order_attributes if has? 'vyd:dateOrder'
          hash[:text] = text if has? 'vyd:text'
          hash[:text_attributes] = text_attributes if has? 'vyd:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'vyd:partnerIdentity'
          hash[:acc] = acc if has? 'vyd:acc'
          hash[:acc_attributes] = acc_attributes if has? 'vyd:acc'
          hash[:sym_par] = sym_par if has? 'vyd:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'vyd:symPar'
          hash[:price_level] = price_level.to_h if has? 'vyd:priceLevel'
          hash[:payment_type] = payment_type.to_h if has? 'vyd:paymentType'
          hash[:is_executed] = is_executed if has? 'vyd:isExecuted'
          hash[:is_executed_attributes] = is_executed_attributes if has? 'vyd:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'vyd:isDelivered'
          hash[:is_delivered_attributes] = is_delivered_attributes if has? 'vyd:isDelivered'
          hash[:centre] = centre.to_h if has? 'vyd:centre'
          hash[:activity] = activity.to_h if has? 'vyd:activity'
          hash[:contract] = contract.to_h if has? 'vyd:contract'
          hash[:carrier] = carrier.to_h if has? 'vyd:carrier'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'vyd:regVATinEU'
          hash[:moss] = moss.to_h if has? 'vyd:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'vyd:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'vyd:accountingPeriodMOSS'
          hash[:accounting_period_moss_attributes] = accounting_period_moss_attributes if has? 'vyd:accountingPeriodMOSS'
          hash[:note] = note if has? 'vyd:note'
          hash[:note_attributes] = note_attributes if has? 'vyd:note'
          hash[:int_note] = int_note if has? 'vyd:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'vyd:intNote'
          hash[:hist_rate] = hist_rate if has? 'vyd:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'vyd:histRate'
          hash[:mark_record] = mark_record if has? 'vyd:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'vyd:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'vyd:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'vyd:parameters'

          hash
        end
      end
    end
  end
end