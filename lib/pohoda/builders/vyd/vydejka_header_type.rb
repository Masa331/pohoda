module Pohoda
  module Builders
    module Vyd
      class VydejkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vyd:id', data[:id]) if data.key? :id
          root << build_element('vyd:storno', data[:storno]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('vyd:date', data[:date]) if data.key? :date
          root << build_element('vyd:numberOrder', data[:number_order]) if data.key? :number_order
          root << build_element('vyd:dateOrder', data[:date_order]) if data.key? :date_order
          root << build_element('vyd:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('vyd:acc', data[:acc]) if data.key? :acc
          root << build_element('vyd:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :price_level
            root << Typ::RefType.new('priceLevel', data[:price_level]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('paymentType', data[:payment_type]).builder
          end
          root << build_element('vyd:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('vyd:isDelivered', data[:is_delivered]) if data.key? :is_delivered
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          if data.key? :carrier
            root << Typ::RefType.new('carrier', data[:carrier]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            root << Typ::ResourcesMOSStype.new('evidentiaryResourcesMOSS', data[:evidentiary_resources_moss]).builder
          end
          root << build_element('vyd:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          root << build_element('vyd:note', data[:note]) if data.key? :note
          root << build_element('vyd:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('vyd:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end