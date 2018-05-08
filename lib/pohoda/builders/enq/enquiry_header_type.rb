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
            root << Typ::NumberType.new('enq:number', data[:number]).builder
          end
          root << build_element('enq:date', data[:date]) if data.key? :date
          root << build_element('enq:validTill', data[:valid_till]) if data.key? :valid_till
          root << build_element('enq:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('enq:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :my_identity
            root << Typ::MyAddress.new('enq:myIdentity', data[:my_identity]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('enq:priceLevel', data[:price_level]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('enq:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('enq:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('enq:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('enq:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          root << build_element('enq:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('enq:details', data[:details]) if data.key? :details
          root << build_element('enq:note', data[:note]) if data.key? :note
          root << build_element('enq:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('enq:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('enq:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('enq:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end