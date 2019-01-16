module Pohoda
  module Builders
    module Ofr
      class OfferHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ofr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ofr:offerType', data[:offer_type], data[:offer_type_attributes]) if data.key? :offer_type
          if data.key? :number
            root << Typ::NumberType.new('ofr:number', data[:number]).builder
          end
          root << build_element('ofr:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('ofr:validTill', data[:valid_till], data[:valid_till_attributes]) if data.key? :valid_till
          root << build_element('ofr:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('ofr:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('ofr:myIdentity', data[:my_identity]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('ofr:priceLevel', data[:price_level]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('ofr:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ofr:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ofr:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('ofr:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          if data.key? :moss
            root << Typ::MOSStype.new('ofr:MOSS', data[:moss]).builder
          end
          if data.key? :evidentiary_resources_moss
            element = Ox::Element.new('ofr:evidentiaryResourcesMOSS')
            data[:evidentiary_resources_moss].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| element << i }
            root << element
          end
          root << build_element('ofr:accountingPeriodMOSS', data[:accounting_period_moss], data[:accounting_period_moss_attributes]) if data.key? :accounting_period_moss
          root << build_element('ofr:isExecuted', data[:is_executed], data[:is_executed_attributes]) if data.key? :is_executed
          root << build_element('ofr:details', data[:details], data[:details_attributes]) if data.key? :details
          root << build_element('ofr:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('ofr:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('ofr:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('ofr:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('ofr:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('ofr:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end