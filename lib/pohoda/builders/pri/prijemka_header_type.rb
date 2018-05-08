module Pohoda
  module Builders
    module Pri
      class PrijemkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pri:id', data[:id]) if data.key? :id
          root << build_element('pri:storno', data[:storno]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('pri:number', data[:number]).builder
          end
          root << build_element('pri:date', data[:date]) if data.key? :date
          root << build_element('pri:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('pri:partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('pri:acc', data[:acc]) if data.key? :acc
          root << build_element('pri:symPar', data[:sym_par]) if data.key? :sym_par
          root << build_element('pri:isExecuted', data[:is_executed]) if data.key? :is_executed
          root << build_element('pri:isDelivered', data[:is_delivered]) if data.key? :is_delivered
          if data.key? :centre
            root << Typ::RefType.new('pri:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pri:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pri:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('pri:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          root << build_element('pri:note', data[:note]) if data.key? :note
          root << build_element('pri:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('pri:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('pri:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('pri:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end