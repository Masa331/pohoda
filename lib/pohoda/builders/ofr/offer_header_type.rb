module Pohoda
  module Builders
    module Ofr
      class OfferHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ofr:id', data[:id]) if data.key? :id
          root << build_element('ofr:offerType', data[:offer_type]) if data.key? :offer_type
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('ofr:date', data[:date]) if data.key? :date
          root << build_element('ofr:validTill', data[:valid_till]) if data.key? :valid_till
          root << build_element('ofr:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('myIdentity', data[:my_identity]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('priceLevel', data[:price_level]).builder
          end
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
          root << build_element('ofr:accountingPeriodMOSS', data[:accounting_period_moss]) if data.key? :accounting_period_moss
          root << build_element('ofr:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('ofr:details', data[:details]) if data.key? :details
          root << build_element('ofr:note', data[:note]) if data.key? :note
          root << build_element('ofr:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('ofr:markRecord', data[:mark_record]) if data.key? :mark_record
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