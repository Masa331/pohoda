module Pohoda
  module Parsers
    module Pro
      class ProdejkaHeaderType
        include ParserCore::BaseParser

        def id
          at 'pro:id'
        end

        def id_attributes
          attributes_at 'pro:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'pro:extId')
        end

        def prodejka_type
          at 'pro:prodejkaType'
        end

        def prodejka_type_attributes
          attributes_at 'pro:prodejkaType'
        end

        def storno
          at 'pro:storno'
        end

        def storno_attributes
          attributes_at 'pro:storno'
        end

        def number
          submodel_at(Typ::NumberType, 'pro:number')
        end

        def date
          at 'pro:date'
        end

        def date_attributes
          attributes_at 'pro:date'
        end

        def accounting
          submodel_at(Typ::AccountingType, 'pro:accounting')
        end

        def text
          at 'pro:text'
        end

        def text_attributes
          attributes_at 'pro:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'pro:partnerIdentity')
        end

        def payment_type
          submodel_at(Typ::PaymentType, 'pro:paymentType')
        end

        def price_level
          submodel_at(Typ::RefType, 'pro:priceLevel')
        end

        def centre
          submodel_at(Typ::RefType, 'pro:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'pro:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'pro:contract')
        end

        def kasa
          submodel_at(Typ::RefType, 'pro:kasa')
        end

        def note
          at 'pro:note'
        end

        def note_attributes
          attributes_at 'pro:note'
        end

        def int_note
          at 'pro:intNote'
        end

        def int_note_attributes
          attributes_at 'pro:intNote'
        end

        def hist_rate
          at 'pro:histRate'
        end

        def hist_rate_attributes
          attributes_at 'pro:histRate'
        end

        def mark_record
          at 'pro:markRecord'
        end

        def mark_record_attributes
          attributes_at 'pro:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['pro:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['pro:parameters', 'typ:parameter'])
        end

        def validate
          submodel_at(Typ::TypeValidate, 'pro:validate')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'pro:id'
          hash[:id_attributes] = id_attributes if has? 'pro:id'
          hash[:ext_id] = ext_id.to_h if has? 'pro:extId'
          hash[:prodejka_type] = prodejka_type if has? 'pro:prodejkaType'
          hash[:prodejka_type_attributes] = prodejka_type_attributes if has? 'pro:prodejkaType'
          hash[:storno] = storno if has? 'pro:storno'
          hash[:storno_attributes] = storno_attributes if has? 'pro:storno'
          hash[:number] = number.to_h if has? 'pro:number'
          hash[:date] = date if has? 'pro:date'
          hash[:date_attributes] = date_attributes if has? 'pro:date'
          hash[:accounting] = accounting.to_h if has? 'pro:accounting'
          hash[:text] = text if has? 'pro:text'
          hash[:text_attributes] = text_attributes if has? 'pro:text'
          hash[:partner_identity] = partner_identity.to_h if has? 'pro:partnerIdentity'
          hash[:payment_type] = payment_type.to_h if has? 'pro:paymentType'
          hash[:price_level] = price_level.to_h if has? 'pro:priceLevel'
          hash[:centre] = centre.to_h if has? 'pro:centre'
          hash[:activity] = activity.to_h if has? 'pro:activity'
          hash[:contract] = contract.to_h if has? 'pro:contract'
          hash[:kasa] = kasa.to_h if has? 'pro:kasa'
          hash[:note] = note if has? 'pro:note'
          hash[:note_attributes] = note_attributes if has? 'pro:note'
          hash[:int_note] = int_note if has? 'pro:intNote'
          hash[:int_note_attributes] = int_note_attributes if has? 'pro:intNote'
          hash[:hist_rate] = hist_rate if has? 'pro:histRate'
          hash[:hist_rate_attributes] = hist_rate_attributes if has? 'pro:histRate'
          hash[:mark_record] = mark_record if has? 'pro:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'pro:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'pro:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'pro:parameters'
          hash[:validate] = validate.to_h if has? 'pro:validate'

          hash
        end
      end
    end
  end
end