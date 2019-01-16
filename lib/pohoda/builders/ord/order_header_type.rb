module Pohoda
  module Builders
    module Ord
      class OrderHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ord:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('ord:extId', data[:ext_id]).builder
          end
          root << build_element('ord:orderType', data[:order_type], data[:order_type_attributes]) if data.key? :order_type
          root << build_element('ord:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('ord:number', data[:number]).builder
          end
          root << build_element('ord:numberOrder', data[:number_order], data[:number_order_attributes]) if data.key? :number_order
          root << build_element('ord:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('ord:dateDelivery', data[:date_delivery], data[:date_delivery_attributes]) if data.key? :date_delivery
          root << build_element('ord:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('ord:dateTo', data[:date_to], data[:date_to_attributes]) if data.key? :date_to
          root << build_element('ord:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('ord:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('ord:myIdentity', data[:my_identity]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('ord:paymentType', data[:payment_type]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('ord:priceLevel', data[:price_level]).builder
          end
          root << build_element('ord:isExecuted', data[:is_executed], data[:is_executed_attributes]) if data.key? :is_executed
          root << build_element('ord:isDelivered', data[:is_delivered], data[:is_delivered_attributes]) if data.key? :is_delivered
          root << build_element('ord:isReserved', data[:is_reserved], data[:is_reserved_attributes]) if data.key? :is_reserved
          if data.key? :i_shop
            root << Typ::RefType.new('ord:iShop', data[:i_shop]).builder
          end
          root << build_element('ord:iShopName', data[:i_shop_name], data[:i_shop_name_attributes]) if data.key? :i_shop_name
          root << build_element('ord:dateCancellation', data[:date_cancellation], data[:date_cancellation_attributes]) if data.key? :date_cancellation
          if data.key? :centre
            root << Typ::RefType.new('ord:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ord:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ord:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('ord:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('ord:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('ord:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('ord:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          root << build_element('ord:permamentDocument', data[:permament_document], data[:permament_document_attributes]) if data.key? :permament_document
          root << build_element('ord:permanentDocument', data[:permanent_document], data[:permanent_document_attributes]) if data.key? :permanent_document
          root << build_element('ord:note', data[:note], data[:note_attributes]) if data.key? :note
          if data.key? :carrier
            root << Typ::CarrierType.new('ord:carrier', data[:carrier]).builder
          end
          root << build_element('ord:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('ord:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('ord:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('ord:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('ord:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end