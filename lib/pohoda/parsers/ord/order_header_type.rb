module Pohoda
  module Parsers
    module Ord
      class OrderHeaderType
        include ParserCore::BaseParser

        def id
          at 'ord:id'
        end

        def order_type
          at 'ord:orderType'
        end

        def storno
          at 'ord:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'ord:number')
        end

        def number_order
          at 'ord:numberOrder'
        end

        def date
          at 'ord:date'
        end

        def date_delivery
          at 'ord:dateDelivery'
        end

        def date_from
          at 'ord:dateFrom'
        end

        def date_to
          at 'ord:dateTo'
        end

        def text
          at 'ord:text'
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

        def is_delivered
          at 'ord:isDelivered'
        end

        def is_reserved
          at 'ord:isReserved'
        end

        def i_shop
          submodel_at(Typ::RefType, 'ord:iShop')
        end

        def i_shop_name
          at 'ord:iShopName'
        end

        def date_cancellation
          at 'ord:dateCancellation'
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
          submodel_at(Typ::ResourcesMOSStype, 'ord:evidentiaryResourcesMOSS')
        end

        def accounting_period_moss
          at 'ord:accountingPeriodMOSS'
        end

        def permament_document
          at 'ord:permamentDocument'
        end

        def note
          at 'ord:note'
        end

        def carrier
          submodel_at(Typ::RefType, 'ord:carrier')
        end

        def int_note
          at 'ord:intNote'
        end

        def mark_record
          at 'ord:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'ord:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'ord:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ord:id'
          hash[:order_type] = order_type if has? 'ord:orderType'
          hash[:storno] = storno if has? 'ord:storno'
          hash[:number] = number.to_h_with_attrs if has? 'ord:number'
          hash[:number_order] = number_order if has? 'ord:numberOrder'
          hash[:date] = date if has? 'ord:date'
          hash[:date_delivery] = date_delivery if has? 'ord:dateDelivery'
          hash[:date_from] = date_from if has? 'ord:dateFrom'
          hash[:date_to] = date_to if has? 'ord:dateTo'
          hash[:text] = text if has? 'ord:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'ord:partnerIdentity'
          hash[:my_identity] = my_identity.to_h_with_attrs if has? 'ord:myIdentity'
          hash[:payment_type] = payment_type.to_h_with_attrs if has? 'ord:paymentType'
          hash[:price_level] = price_level.to_h_with_attrs if has? 'ord:priceLevel'
          hash[:is_executed] = is_executed if has? 'ord:isExecuted'
          hash[:is_delivered] = is_delivered if has? 'ord:isDelivered'
          hash[:is_reserved] = is_reserved if has? 'ord:isReserved'
          hash[:i_shop] = i_shop.to_h_with_attrs if has? 'ord:iShop'
          hash[:i_shop_name] = i_shop_name if has? 'ord:iShopName'
          hash[:date_cancellation] = date_cancellation if has? 'ord:dateCancellation'
          hash[:centre] = centre.to_h_with_attrs if has? 'ord:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'ord:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'ord:contract'
          hash[:reg_va_tin_eu] = reg_va_tin_eu.to_h_with_attrs if has? 'ord:regVATinEU'
          hash[:moss] = moss.to_h_with_attrs if has? 'ord:MOSS'
          hash[:evidentiary_resources_moss] = evidentiary_resources_moss.to_h_with_attrs if has? 'ord:evidentiaryResourcesMOSS'
          hash[:accounting_period_moss] = accounting_period_moss if has? 'ord:accountingPeriodMOSS'
          hash[:permament_document] = permament_document if has? 'ord:permamentDocument'
          hash[:note] = note if has? 'ord:note'
          hash[:carrier] = carrier.to_h_with_attrs if has? 'ord:carrier'
          hash[:int_note] = int_note if has? 'ord:intNote'
          hash[:mark_record] = mark_record if has? 'ord:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'ord:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'ord:parameters'

          hash
        end
      end
    end
  end
end