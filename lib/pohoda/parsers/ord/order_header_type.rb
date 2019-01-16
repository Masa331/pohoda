module Pohoda
  module Parsers
    module Ord
      class OrderHeaderType
        include ParserCore::BaseParser

        def id
          at 'ord:id'
        end

        def id_attributes
          attributes_at 'ord:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ord:extId')
        end

        def order_type
          at 'ord:orderType'
        end

        def order_type_attributes
          attributes_at 'ord:orderType'
        end

        def storno
          at 'ord:storno'
        end

        def storno_attributes
          attributes_at 'ord:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'ord:number')
        end

        def number_order
          at 'ord:numberOrder'
        end

        def number_order_attributes
          attributes_at 'ord:numberOrder'
        end

        def date
          at 'ord:date'
        end

        def date_attributes
          attributes_at 'ord:date'
        end

        def date_delivery
          at 'ord:dateDelivery'
        end

        def date_delivery_attributes
          attributes_at 'ord:dateDelivery'
        end

        def date_from
          at 'ord:dateFrom'
        end

        def date_from_attributes
          attributes_at 'ord:dateFrom'
        end

        def date_to
          at 'ord:dateTo'
        end

        def date_to_attributes
          attributes_at 'ord:dateTo'
        end

        def text
          at 'ord:text'
        end

        def text_attributes
          attributes_at 'ord:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'ord:partnerIdentity')
        end

        def my_identity
          submodel_at(Typ::MyAddress, 'ord:myIdentity')
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'ord:paymentType')
        end

        def price_level
          submodel_at(Typ::RefType, 'ord:priceLevel')
        end

        def is_executed
          at 'ord:isExecuted'
        end

        def is_executed_attributes
          attributes_at 'ord:isExecuted'
        end

        def is_delivered
          at 'ord:isDelivered'
        end

        def is_delivered_attributes
          attributes_at 'ord:isDelivered'
        end

        def is_reserved
          at 'ord:isReserved'
        end

        def is_reserved_attributes
          attributes_at 'ord:isReserved'
        end

        def i_shop
          submodel_at(Typ::RefType, 'ord:iShop')
        end

        def i_shop_name
          at 'ord:iShopName'
        end

        def i_shop_name_attributes
          attributes_at 'ord:iShopName'
        end

        def date_cancellation
          at 'ord:dateCancellation'
        end

        def date_cancellation_attributes
          attributes_at 'ord:dateCancellation'
        end

        def centre
          submodel_at(Typ::RefType, 'ord:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'ord:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'ord:contract')
        end

        def reg_va_tin_eu
          submodel_at(Typ::RefTypeRegVATinEU, 'ord:regVATinEU')
        end

        def moss
          submodel_at(Typ::MOSStype, 'ord:MOSS')
        end

        def evidentiary_resources_moss
          array_of_at(String, ['ord:evidentiaryResourcesMOSS', 'typ:ids'])
        end

        def accounting_period_moss
          at 'ord:accountingPeriodMOSS'
        end

        def accounting_period_moss_attributes
          attributes_at 'ord:accountingPeriodMOSS'
        end

        def permament_document
          at 'ord:permamentDocument'
        end

        def permament_document_attributes
          attributes_at 'ord:permamentDocument'
        end

        def permanent_document
          at 'ord:permanentDocument'
        end

        def permanent_document_attributes
          attributes_at 'ord:permanentDocument'
        end

        def note
          at 'ord:note'
        end

        def note_attributes
          attributes_at 'ord:note'
        end

        def carrier
          submodel_at(Typ::CarrierType, 'ord:carrier')
        end

        def int_note
          at 'ord:intNote'
        end

        def int_note_attributes
          attributes_at 'ord:intNote'
        end

        def hist_rate
          at 'ord:histRate'
        end

        def hist_rate_attributes
          attributes_at 'ord:histRate'
        end

        def mark_record
          at 'ord:markRecord'
        end

        def mark_record_attributes
          attributes_at 'ord:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['ord:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['ord:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ord:id'
          hash[:id_attributes] = id_attributes if has? 'ord:id'
          hash[:ext_id] = ext_id.to_h if has? 'ord:extId'
          hash[:order_type] = order_type if has? 'ord:orderType'
          hash[:order_type_attributes] = order_type_attributes if has? 'ord:orderType'
          hash[:storno] = storno if has? 'ord:storno'
          hash[:storno_attributes] = storno_attributes if has? 'ord:storno'
          hash[:number] = number.to_h if has? 'ord:number'
          hash[:number_order] = number_order if has? 'ord:numberOrder'
          hash[:number_order_attributes] = number_order_attributes if has? 'ord:numberOrder'
          hash[:date] = date if has? 'ord:date'
          hash[:date_attributes] = date_attributes if has? 'ord:date'
          hash[:date_delivery] = date_delivery if has? 'ord:dateDelivery'
          hash[:date_delivery_attributes] = date_delivery_attributes if has? 'ord:dateDelivery'
          hash[:date_from] = date_from if has? 'ord:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'ord:dateFrom'
          hash[:date_to] = date_to if has? 'ord:dateTo'
          hash[:date_to_attributes] = date_to_attributes if has? 'ord:dateTo'
          hash[:text] = text if has? 'ord:text'
          hash[:text_attributes] = text_attributes if has? 'ord:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'ord:partnerIdentity'
          hash[:my_identity] = my_identity.to_h if has? 'ord:myIdentity'
          hash[:payment_type] = payment_type.to_h if has? 'ord:paymentType'
          hash[:price_level] = price_level.to_h if has? 'ord:priceLevel'
          hash[:is_executed] = is_executed if has? 'ord:isExecuted'
          hash[:is_executed_attributes] = is_executed_attributes if has? 'ord:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'ord:isDelivered'
          hash[:is_delivered_attributes] = is_delivered_attributes if has? 'ord:isDelivered'
          hash[:is_reserved] = is_reserved if has? 'ord:isReserved'
          hash[:is_reserved_attributes] = is_reserved_attributes if has? 'ord:isReserved'
          hash[:i_shop] = i_shop.to_h if has? 'ord:iShop'
          hash[:i_shop_name] = i_shop_name if has? 'ord:iShopName'
          hash[:i_shop_name_attributes] = i_shop_name_attributes if has? 'ord:iShopName'
          hash[:date_cancellation] = date_cancellation if has? 'ord:dateCancellation'
          hash[:date_cancellation_attributes] = date_cancellation_attributes if has? 'ord:dateCancellation'
          hash[:centre] = centre.to_h if has? 'ord:centre'
          hash[:activity] = activity.to_h if has? 'ord:activity'
          hash[:contract] = contract.to_h if has? 'ord:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h if has? 'ord:regVATinEU'
          hash[:moss] = moss.to_h if has? 'ord:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss if has? 'ord:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'ord:accountingPeriodMOSS'
          hash[:accounting_period_moss_attributes] = accounting_period_moss_attributes if has? 'ord:accountingPeriodMOSS'
          hash[:permament_document] = permament_document if has? 'ord:permamentDocument'
          hash[:permament_document_attributes] = permament_document_attributes if has? 'ord:permamentDocument'
          hash[:permanent_document] = permanent_document if has? 'ord:permanentDocument'
          hash[:permanent_document_attributes] = permanent_document_attributes if has? 'ord:permanentDocument'
          hash[:note] = note if has? 'ord:note'
          hash[:note_attributes] = note_attributes if has? 'ord:note'
          hash[:carrier] = carrier.to_h if has? 'ord:carrier'
          hash[:int_note] = int_note if has? 'ord:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'ord:intNote'
          hash[:hist_rate] = hist_rate if has? 'ord:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'ord:histRate'
          hash[:mark_record] = mark_record if has? 'ord:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'ord:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'ord:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'ord:parameters'

          hash
        end
      end
    end
  end
end