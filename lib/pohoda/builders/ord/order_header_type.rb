module Pohoda
  module Builders
    module Ord
      class OrderHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ord:id', data[:id]) if data.key? :id
          root << build_element('ord:orderType', data[:order_type]) if data.key? :order_type
          root << build_element('ord:storno', data[:storno]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('ord:numberOrder', data[:number_order]) if data.key? :number_order
          root << build_element('ord:date', data[:date]) if data.key? :date
          root << build_element('ord:dateDelivery', data[:date_delivery]) if data.key? :date_delivery
          root << build_element('ord:dateFrom', data[:date_from]) if data.key? :date_from
          root << build_element('ord:dateTo', data[:date_to]) if data.key? :date_to
          root << build_element('ord:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('paymentType', data[:payment_type]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('priceLevel', data[:price_level]).builder
          end
          root << build_element('ord:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('ord:isDelivered', data[:is_delivered]) if data.key? :is_delivered
          root << build_element('ord:isReserved', data[:is_reserved]) if data.key? :is_reserved
          if data.key? :i_shop
            root << Typ::RefType.new('iShop', data[:i_shop]).builder
          end
          root << build_element('ord:iShopName', data[:i_shop_name]) if data.key? :i_shop_name
          root << build_element('ord:dateCancellation', data[:date_cancellation]) if data.key? :date_cancellation
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
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
          root << build_element('ord:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          root << build_element('ord:permamentDocument', data[:permament_document]) if data.key? :permament_document
          root << build_element('ord:note', data[:note]) if data.key? :note
          if data.key? :carrier
            root << Typ::RefType.new('carrier', data[:carrier]).builder
          end
          root << build_element('ord:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('ord:markRecord', data[:mark_record]) if data.key? :mark_record
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