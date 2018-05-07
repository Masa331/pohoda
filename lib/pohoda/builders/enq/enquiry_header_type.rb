module Pohoda
  module Builders
    module Enq
      class EnquiryHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('enq:id', data[:id]) if data.key? :id
          root << build_element('enq:enquiryType', data[:enquiry_type]) if data.key? :enquiry_type
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('enq:date', data[:date]) if data.key? :date
          root << build_element('enq:validTill', data[:valid_till]) if data.key? :valid_till
          root << build_element('enq:text', data[:text]) if data.key? :text
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
          root << build_element('enq:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('enq:details', data[:details]) if data.key? :details
          root << build_element('enq:note', data[:note]) if data.key? :note
          root << build_element('enq:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('enq:markRecord', data[:mark_record]) if data.key? :mark_record
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