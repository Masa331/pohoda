module Pohoda
  module Builders
    module Vyd
      class VydejkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('vyd:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('vyd:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('vyd:number', data[:number]).builder
          end
          root << build_element('vyd:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('vyd:numberOrder', data[:number_order], data[:number_order_attributes]) if data.key? :number_order
          root << build_element('vyd:dateOrder', data[:date_order], data[:date_order_attributes]) if data.key? :date_order
          root << build_element('vyd:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('vyd:partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('vyd:acc', data[:acc], data[:acc_attributes]) if data.key? :acc
          root << build_element('vyd:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :price_level
            root << Typ::RefType.new('vyd:priceLevel', data[:price_level]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('vyd:paymentType', data[:payment_type]).builder
          end
          root << build_element('vyd:isExecuted', data[:is_executed], data[:is_executed_attributes]) if data.key? :is_executed
          root << build_element('vyd:isDelivered', data[:is_delivered], data[:is_delivered_attributes]) if data.key? :is_delivered
          if data.key? :centre
            root << Typ::RefType.new('vyd:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vyd:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vyd:contract', data[:contract]).builder
          end
          if data.key? :carrier
            root << Typ::CarrierType.new('vyd:carrier', data[:carrier]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('vyd:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('vyd:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('vyd:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('vyd:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          root << build_element('vyd:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('vyd:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('vyd:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('vyd:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('vyd:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('vyd:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end